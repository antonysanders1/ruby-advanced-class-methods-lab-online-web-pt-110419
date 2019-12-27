require 'pry'

class Song
  attr_accessor :name, :artist_name
  @@all = []

 def self.create
   song = self.new
    @@all << song
    song
  end
 
  def self.all
    @@all
  end

  def save
    self.class.all << self
  end



 def self.new_by_name(name)
  #instantiates a song with a name property 
  song = self.new
  song.name = name
  song
 end
 
 
 
 def self.create_by_name(name)
   #instantiates and saves a song with a name property
   song = self.create
   song.name = name
   song
 end 
 
 
 
 def self.find_by_name(name)
   #can find a song present in @@all by name
   #returns falsey when a song name is not present in @@all
   #binding.pry
   @@all.detect { |song| song.name == name}

 end 
 
 
 def self.find_or_create_by_name(name)
   self.find_by_name(name) || self.create_by_name(name)
 end 
 
 def self.alphabetical
   @@all.sort_by {|song| song.name }
 end 
 
 def self.new_from_filename(name, artist_name)
   binding.pry
   song = self.create
   song.name = name
   song.artist_name = artist_name
   song = "#{artist_name} - #{name}.mp3"
   song
 end 
 
def self.create_from_filename
  
end 
 
 def self.destroy_all
   @@all.clear
 end 
 


end
