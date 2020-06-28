class Genre
    attr_accessor :name, :song, :artist
    @@all=[]
    def initialize(name)
        @name=name
        @@all<<self
    end
    def songs
        Song.all.select {|song| song.genre==self}
    end

    def artists
        Song.all.map {|song| song.artist if song.genre==self }
    end

    def self.all
        @@all
    end










end