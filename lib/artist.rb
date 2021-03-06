
require 'pry'

class Artist
    attr_accessor :name
    def initialize(name)
        @name = name 
        @songs = []                       
    end

    def songs
        Song.all.select {|song_obj| song_obj.name}
    end

    def add_song(song)
        @songs << song
        song.artist = self
        
    end

    def add_song_by_name(song_name)
        new_song = Song.new(song_name)
        new_song.artist = self
    end

    def self.song_count
        Song.all.count     
    end



end