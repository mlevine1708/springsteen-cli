module Springsteen
class Album
  
  @@all = []
  
  attr_accessor :title, :date, :url, :description 
  
  def Album
    album.self
  end
  
def initialize
  @title = title
  @date = date
  @url = url 
  @@all << self 
end

def self.all 
  @@self 
end

 
 
   
   
   
 end
  
  
    
  
  
  



end 
