class MP3Importer
<<<<<<< HEAD
  attr_accessor :path
=======
  attr_accessor :path, :files
>>>>>>> 5a37330235fce0d730fc1e521a7880c9402d5566
  
  def initialize(path)
    @path = path 
  end 
  
  def files
<<<<<<< HEAD
    files = []
    file = Dir.entries(@path)
    file.each do |file| 
    if file.include?("mp3")
      files << file
     end 
  end 
files 
end
  
  def import
    files.each {|file| Song.new_by_filename(file)}
=======
    @files = []
    file = Dir.entries(@path)
    file.each do |file| 
    if file.include?("mp3")
      @files << file
     end 
  end 
@files 
end
  
  def import
    @files.each {|file| Song.new_by_filename(file)}
>>>>>>> 5a37330235fce0d730fc1e521a7880c9402d5566
  end 
  
  
end 