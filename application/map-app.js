var map = L.map('map', { zoomControl: false, minZoom: 6 }).setView([51.420370, 10.251105], 7);
new L.Control.Zoom({ position: 'bottomright' }).addTo(map);

// improve experience on mobile
if (map.tap) map.tap.disable();


// adding layers
L.tileLayer('https://api.tiles.mapbox.com/v4/{id}/{z}/{x}/{y}.png?access_token={accessToken}', {
  attribution: '<a href="https://www.mapbox.com/about/maps/" target="_blank">&copy; Mapbox &copy; OpenStreetMap</a> | <a href="https://www.mapbox.com/map-feedback/" target="_blank">Improve this map</a>',
  id: 'datendrang.3cbaa7ef',
  accessToken: 'pk.eyJ1IjoiZGF0ZW5kcmFuZyIsImEiOiJjaWczYXBsZTAxcGQ1dXJtM3IydXBxbXMwIn0.s2c_Q7uvRnMO8cB3RokJ3A'
}).addTo(map);

var addMarkersToMap = function addMarkersToMap(data) {
  var geoJsonLayer = L.geoJson(data, {
    pointToLayer: function (feature, latlng) {
      return L.marker(latlng);
    },
    onEachFeature: function (feature, layer) {
      var marker = L.marker([feature.geometry.coordinates[0],
            feature.geometry.coordinates[1]]).addTo(map);

      var popup = L.popup({
        autoPan: false,
        keepInView: true,
        autoPanPaddingBottomRight: new L.Point(10, 50),
        offset: new L.Point(10, -10),
      }).setContent(feature.properties.popup);

      marker.bindPopup(popup);
    }
  });
  map.addLayer(geoJsonLayer);
  map.addControl( new L.Control.Search({layer: geoJsonLayer, propertyName: 'name'}) );
};
  $.getJSON( "./data/ddj.geojson", function(data) {
  addMarkersToMap(data);
});
