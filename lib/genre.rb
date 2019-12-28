class Genre
  attr_accessor :name
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def songs
    Song.all.select {|d| d.genre == self}
  end

  def artists
    songs.collect {|e| e.artist}
  end

  def self.all
    @@all
  end


end
