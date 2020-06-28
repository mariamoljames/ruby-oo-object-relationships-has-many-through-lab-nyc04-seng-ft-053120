class Artist
    attr_accessor :name, :song, :genre
    @@all=[]
    def initialize(name)
        @name=name
        @@all<<self
    end
    def songs
        Song.all.select {|song| song.artist==self}
    end
    def new_song(name,genre)
        new_song=Song.new(name,self,genre)
    end
    def genres
        Song.all.map {|song| song.genre if song.artist==self}
    end
    def self.all
        @@all
    end










end