class Artist 
  attr_accessor :name, :songs
  
  @@all = [] 
  
  def initialize(name)
    @name = name 
    @songs = []
  end 
  
  def name=(name)
    @name = name 
  end 
  
  def add_song(song)
    @songs << song 
    song.artist = self 
  end 

  
  def save 
    @@all << self 
  end 
  
    def self.all 
    @@all
  end 
  
  def self.create(name)
    artist = self.new(name)
<<<<<<< HEAD
    artist.save 
    artist
=======
    artist.name 
    artist 
>>>>>>> 5a37330235fce0d730fc1e521a7880c9402d5566
  end 
  
  def self.find(name)
    self.all.detect {|artist| artist.name == name}
  end 
  
  def self.find_or_create_by_name(name)
    self.find(name) || self.create(name)
  end 
  
  def print_songs
  @songs.each {|song| puts song.name}
  end 
  
end 