require 'pry'
class Song

    @@count = 0
    @@artists = []
    @@genres = []
    attr_reader :name, :artist, :genre

    def initialize(name, artist, genre)
        @name = name
        @artist = artist
        @genre = genre
        @@count +=1
        @@artists << artist
        @@genres << genre
    end

    def self.count
        @@count
    end

    def self.artists
        @@artists.uniq
    end

    def self.all_songs
        @@songs
    end

    def self.genres
        @@genres.uniq
    end

    def self.genre_count
        hash_of_genres = {}
        @@genres.each do |genre|
            if hash_of_genres[genre]
                hash_of_genres[genre] += 1
            else
                hash_of_genres[genre] = 1
            end
        end
        hash_of_genres
    end

    def self.artist_count
        hash_of_artists = {}
        @@artists.each do |artist|
            if hash_of_artists[artist]
                hash_of_artists[artist] += 1
            else
                hash_of_artists[artist] = 1
            end
        end
        hash_of_artists
    end

    

end