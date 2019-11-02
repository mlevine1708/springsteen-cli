module Springsteen
class Album
  
  @@all = [ ]
  
  attr_accessor :title, :date, :url 
  
  def Album
    album.self
  end
  
def initialize(title, date, url)
  @title = title
  @date = date
  @url = url 
  @@all << self 
end

def self.all 
  @@all  
end

 
 
   
   
   
 end
  
end 