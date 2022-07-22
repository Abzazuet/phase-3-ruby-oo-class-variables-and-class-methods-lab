class Song 
    @@count = 0
    @@artists = []
    @@genres = []
    @@genre_count = {}
    @@artist_count = {}
    
    attr_accessor :name, :genre, :artist
    def initialize(name, artist, genre)
        @name = name
        @artist = artist
        @genre = genre
        @@count += 1
        @@genres.push(@genre)
        @@artists.push(@artist)

    end
    # Helper class methods
    def self.delete_duplicate(array)
        unique = []
        i = 0
        while i < array.length
            if !unique.include? array[i]
                unique.push(array[i])
            end
            i = i+1
        end
        unique
    end
    def self.create_hisrogram(array)
        array.tally
    end
    # Class methods
    def self.count
        @@count
    end
    def self.genres
        delete_duplicate(@@genres)
    end
    def self.artists
        delete_duplicate(@@artists)
    end
    def self.genre_count
        create_hisrogram(@@genres)
    end
    def self.artist_count
        create_hisrogram(@@artists)
    end

end
ninety_nine_problems = Song.new("99 Problems", "Jay-Z", "rap")
ninety_nine = Song.new("99", "Jay-Z", "rap")

pp Song.artists