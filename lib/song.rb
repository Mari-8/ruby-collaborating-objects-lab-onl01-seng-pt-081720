require 'pry'

class Song 
  attr_accessor :name, :artist 
  
  @@all = []
  
  def initialize(name)
    @name = name 
    @@all << self
  end
  
  def self.all 
    @@all 
  end
  
   def artist_name 
    if self.artist
      self.artist.name 
    else 
      nil
    end
  end
  
   def artist_name=(name)
    if (self.artist.nil?)
      self.artist = Artist.new(name)
    else
      self.artist.name = name
    end
  end
  
    def self.new_by_filename(file)
    song_info = file.chomp(".mp3").split(" - ")
    binding.pry
    song = Song.new(song_info[1])
    song.artist_name = song_info[0]
    song
  end
end


end