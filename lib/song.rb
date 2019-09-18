class Song
  attr_accessor :name, :artist, :genre

  @@count = 0
  @@artists = []
  @@genres = []
  @@songs = []
  
  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count += 1
    @@artists << @artist
    @@genres << @genre
    @@songs << self
  end

  def self.count
    @@songs.map{ |song| song.name }.uniq.size
  end

  def self.artists
    @@artists.uniq
  end

  def self.genres
    @@genres.uniq
  end

  def self.genre_count
    saved_songs = []
    songs = @@songs.reduce([]) do |memo, song| 
      if !saved_songs.include?(song.name)
        saved_songs << song.name
        memo << song
      end
      memo
    end

    songs.reduce(Hash.new(0)) do |memo, song|
      memo[song.genre] = memo[song.genre] + 1
      memo
    end
  end

  def self.artist_count
    saved_songs = []
    songs = @@songs.reduce([]) do |memo, song| 
      if !saved_songs.include?(song.name)
        saved_songs << song.name
        memo << song
      end
      memo
    end

    songs.reduce(Hash.new(0)) do |memo, song|
      memo[song.artist] = memo[song.artist] + 1
      memo
    end

  end
end