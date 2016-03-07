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
      coordinates: [row[0].to_f, row[1].to_f]
    },
    properties: {
      name: row[2],
      link: row[3],
      ort: row[4],
      leitung: row[5],
      icon: row[7],
      type: row[8]
    }
  }

  # adding entry object to ddj array
  if $. != 1
    ddj.push(entry) unless $. == 1
  end
end

data = {type: 'FeatureCollection', features: ddj}
File.open("ddj.geojson", 'w') { |file| file.print data.to_json }
