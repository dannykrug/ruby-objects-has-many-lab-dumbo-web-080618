class Artist

  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    @songs = []
    @@all << self
  end

  def songs
    Song.all.select { |song| song.artist == self}
  end

  def add_song(song)
    @songs << song
    song.artist = self
  end

  def add_song_by_name(name)
    song = Song.new(name)
    song.artist = self
    add_song(song)
  end

  def self.song_count
    Song.all.length
  end


  def self.all
    @@all
  end



end
