require 'pry'
require 'csv'

require_relative 'album'

albums = []

CSV.foreach('space_jams.csv', headers: true, header_converters: :symbol) do |row|
  track = row.to_hash
  album = albums.find { |a| a.id == track[:album_id] }
  if album.nil?
    album = Album.new(track[:album_id], track[:album_name], track[:artists],
    track[:title])
    albums << album

  end

  album.tracks << track

end

albums.each do |album|
  puts album.summary
end
