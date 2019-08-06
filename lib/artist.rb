class Artist
  attr_accessor :name
  @@all = []
  
  def initialize(name)
    @name = name
    @songs = []
    @@all << self
  end
  
  def self.all
    @@all
  end
  
  def songs
    Song.all.map {|song| song.artist == self}
  end
  
  def new_song(name, genre)
    Song.new(self, name, genre)
  end
  
  def genres
    self.songs.collect {|song| song.genre}
  end
end