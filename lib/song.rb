class Song 
  attr_accessor :name, :artist, :genre 
  @@all = []
  @@count = 0
  @@artists = []
  @@genres = []
  
  def initialize(name, artist, genre)
    @name = name 
    @artist = artist
    @@artists << artist
    @genre = genre
    @@genres << genre
    @@all << self
    @@count += 1
  end
  
  def self.all
    @@all
  end
  
  def self.count
    @@count
  end
  
  def self.artists
    #Song.all.map {|song| song.artist}.uniq
    @@artists.uniq
  end 
  
  def self.genres 
    @@genres.uniq
  end 
  
  def self.genre_count
    hash = {}
    @@genres.each do |genre|
      if hash[genre]
        hash[genre] += 1
      else
        hash[genre] = 1
      end 
    end
    hash 
  end 
  
  def self.artist_count
    hash = {}
    @@artists.each do |artist|
      if hash[artist]
        hash[artist] += 1
      else
        hash[artist] = 1
      end 
    end
    hash 
  end
  
end
  