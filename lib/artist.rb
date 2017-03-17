require 'pry'
#require './song.rb'

class Artist

  attr_accessor :name, :song, :songs
  
  @@song_count = 0

  
  def initialize(name)
    @name = name
    @songs = []
    
  end

  def add_song(song)
    #and tells the song is belongs to the artist
    @songs << song
    song.artist = self
    @@song_count += 1
  end

  def add_song_by_name(name)

    new_song = Song.new(name)
    new_song.artist = self

    self.add_song(new_song)
  end

  def self.song_count
    @@song_count
  end
      

end


# adele = Artist.new("Adele")
# 
# adele.add_song_by_name("Test song")
# 
# binding.pry
