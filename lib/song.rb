require 'pry'
class Song 
  attr_accessor :name, :artist
  
 def initialize(name)
    @name = name 
    @artist = artist 
 end 
  
 def self.new_by_filename(filename)
  song_name = filename.split(" - ")[1]
  song = self.new(song_name)
  artist_name = filename.split(" - ")[0]
  artist = Artist.create(artist_name)
  artist.add_song(song)
  song 
  end
  
  def artist_name(name)
    artist = Artist.find_or_create_by_name(name)
    self.artist.add_song(self)
  end
  
end 