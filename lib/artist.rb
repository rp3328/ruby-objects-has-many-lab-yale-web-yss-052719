class Artist
    attr_accessor :name, :songs
    @@num_song = 0
    def initialize(name)
        @name = name
        @songs = []
    end

    def add_song(sname)
        @songs << sname
        sname.artist = self
        @@num_song += 1
    end

    def add_song_by_name(sname)
        song = Song.new(sname)
        @songs << song
        song.artist = self
        @@num_song += 1
    end

    def Artist.song_count
        @@num_song
    end

end
