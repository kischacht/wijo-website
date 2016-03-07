require 'csv'
require 'json'
require 'open-uri'
require 'uri'

ddj = []

CSV.foreach('ddj.csv') do |row|
  entry = {
    type: 'Feature',
    geometry: {
      type: 'Point',
      coordinates: [row[1].to_f, row[0].to_f]
    },
    properties: {
      name: row[2],
      popup: row[3],
      type: row[4]
    }
  }

  # adding city object to cities array
  if $. != 1
    ddj.push(entry) unless $. == 1
  end
end

data = {type: 'FeatureCollection', features: ddj}
File.open("ddj.geojson", 'w') { |file| file.print data.to_json }
