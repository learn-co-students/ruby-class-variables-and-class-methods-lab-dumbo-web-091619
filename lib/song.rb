class Song
    attr_reader :name, :artist, :genre
    @@count = 0
    @@artists = []
    @@genres = []
    
    def initialize(name, artist, genre)
        @name = name
        @artist = artist
        @genre = genre

        @@count +=1
        @@artists << self.artist
        @@genres << self.genre
    end

    def self.count
        @@count
    end

    def self.artists
        @@artists.uniq
    end

    def self.genres
        @@genres.uniq
    end

    def self.genre_count
        # get number of repeats per element
        # pass that into a hash as the value for the genre key
        # Hash.new creates the key if it doesn't already exist
        genre_count_hash = Hash.new 0
        @@genres.each do |genre|
            genre_count_hash[genre] += 1
        end
        genre_count_hash
    end
        
    def self.artist_count
        artist_count_hash = Hash.new 0
        @@artists.each do |artist|
            artist_count_hash[artist] += 1
        end
        artist_count_hash
    end
end