require "pry"

class Song
    attr_accessor :name, :artist, :genre
    @@count = 0
    @@artists = []
    @@genres = []

    def initialize(name, artist, genre)
        @@count += 1
        @name = name
        @artist = artist
        @@artists << artist
        @genre = genre
        @@genres << genre
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
        genre_hash = {}
        @@genres.each do |genre|
            genre_hash[genre] ||= 0     #if the genre is already a part of the hash, no need to create it
            genre_hash[genre] += 1      #increment the vlue integer
        end
        genre_hash
    end

    def self.artist_count
        artist_hash = {}
        @@artists.each do |artist|
            artist_hash[artist] ||= 0
            artist_hash[artist] += 1
        end
        artist_hash
    end

end