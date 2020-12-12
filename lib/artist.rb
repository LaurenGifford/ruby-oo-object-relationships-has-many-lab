require 'pry'
class Artist

    attr_accessor :name

    def initialize(name)
        @name = name
    end

    def songs
        Song.all.select{|song| song.artist == self}
    end

    def add_song(song)
        song.artist = self
    end

    def add_song_by_name(song_name)
        song = Song.new(song_name)
        song.artist = self
    end

    def self.song_count 
        songs = Song.all.count
    end

    # def self.post_count 
    #     Post.all.count
    # end
end

# hello = add_song_by_name("Hello")
# binding.pry
# 0
# The `#add_song_by_name` method should take in an argument of a name, use that
# argument to create a new song and _then_ associate the objects. The method doesn't need to return anything, 
# just create the association.