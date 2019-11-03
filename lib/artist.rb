class Artist

  attr_accessor :name

  def initialize (artist_name)
    @name = artist_name
  end

  def songs
    Song.all.select {|song| song.artist==self}
  end

  def add_song (song)
    song.artist = self
  end

  def add_song_by_name (name)
    added = Song.new (name)
    add_song (added)
  end

  def self.song_count
    Song.all.count
  end

end
