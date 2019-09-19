class Song 
  attr_accessor :name, :artist, :genre
 
  def initialize (name, artist, genre)
    @name = name 
    @artist = artist
    @@artists << @artist
    @genre = genre
    @@genres << @genre
    @@count += 1
  end  
  
  @@count = 0 
  @@artists = []
  @@genres = []
  
  def self.count 
    @@count
  end 
  
  def self.genres 
    @@genres.uniq 
  end
  
  def self.artists
    @@artists.uniq
  end
  
  def self.genres
    @@genres.uniq
  end 
  
  def self.genre_count 
    # returns a hash where each key is a genre and each value is the number of songs with that genre
    # @@genre is an array of strings
    counting_genres = {}
    @@genres.each do |genre|
      if counting_genres[genre]
        counting_genres[genre] += 1
      else counting_genres[genre] = 1
      end
    end
    counting_genres
  end
  
  def self.artist_count
    counting_artists = {}
    @@artists.each do |artist|
      if counting_artists[artist]
        counting_artists[artist] += 1 
      else counting_artists[artist] = 1 
      end 
    end
    counting_artists
  end
  
  
end