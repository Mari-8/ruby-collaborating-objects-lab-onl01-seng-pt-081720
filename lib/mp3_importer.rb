require 'pry'

class MP3Importer 
  attr_accessor :path
  
  def initialize(path)
    @path = path
  end
  
  def files
    files = []
    Dir.new(self.path).each do |file|
      files << file if file.length > 4
    end
    files
  end
  
  def import(name) 
    Song.new_by_filename(name)
  end 
  
  
end