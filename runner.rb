require 'csv'

require_relative 'lib/album.rb'
require_relative 'lib/track.rb'

albums = []

CSV.foreach('space_jams.csv', headers: true, header_converters: :symbol) do |row|
  track = row.to_hash
  album = albums.find { |a| a.id == track[:album_id] }
  if album.nil?
    album = Album.new(track[:album_id], track[:album_name], track[:artists],
    track[:title])
    albums << album

  end

  album.tracks << Track.new(
    track[:album_id],
    track[:track_id],
    track[:title],
    track[:track_number],
    track[:duration_ms]
  )

end

albums.each do |album|
  puts album.summary
end
