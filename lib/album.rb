class Album

  attr_reader :id, :title, :artists, :tracks

  def initialize(id, title, artists, tracks)
    @id = id
    @title = title
    @artists = artists
    @tracks = []
  end

  def duration_min
    track_min = 0.00
    tracks.each do |track|
      track_min = millisecond_conversion(track.duration_ms.to_f)
    end
    track_min.round(2)
  end

  def summary
    %{
Name: #{title}
Artist(s): #{artists}
Duration: #{duration_min} minutes
Tracks: #{track_name}}
  end

  def track_name
    all_tracks = ""
    tracks.each do |track|
      all_tracks << "\n- " << track.title << "\n"
    end
    all_tracks
  end

  def millisecond_conversion(ms)
    ms / 60000
  end

end
