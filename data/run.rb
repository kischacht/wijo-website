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
      orga: row[3],
      link: row[4],
      ort: row[5],
      leitung: row[6],
      icon: row[8],
      type: row[9]
    }
  }

  # adding entry object to ddj array
  if $. != 1
    ddj.push(entry) unless $. == 1
  end
end

data = {type: 'FeatureCollection', features: ddj}
File.open("ddj.geojson", 'w') { |file| file.print data.to_json }
