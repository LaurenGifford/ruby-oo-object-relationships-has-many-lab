class Song

    attr_reader :name
    attr_accessor :artist

    @@all = []

    def initialize(name)
        @name = name
        @artist = artist
        @@all << self
    end

    def self.all
        @@all
    end

    def name
        @name
    end

    def artist
        @artist
    end

    def artist_name
        if self.artist
        self.artist.name
        end
    end
end
