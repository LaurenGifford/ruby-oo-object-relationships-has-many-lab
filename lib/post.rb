class Post

    attr_reader :title
    attr_accessor :author

    @@all = []

    def initialize(title)
        @title = title
        @author = author
        @@all << self
    end

    def self.all
        @@all
    end

    def title
        @title
    end

    def author
        @author
    end

    def author_name
        if self.author
        self.author.name
        end
    end
end