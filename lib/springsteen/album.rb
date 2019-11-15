class Springsteen::Album
  
  
  attr_accessor :title, :date, :url, :info,  :notes, :release_date, :label, :producer
  @@all = []
  
  def initialize(title, date, url)
    @title = title
    @date = date
    @url = url 
    save 
end
  
def self.all 
  Springsteen::Scraper.scrape_springsteen if @@all.empty?
  @@all  
end

def list_albums
  Springsteen:Scraper.scrape_albums(self)
end

def save
  @@all << self
end
 
 
   
   
   
 end
