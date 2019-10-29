require "nokogiri"
require "open-uri"

module Springsteen
class Scraper 
  

def self.scrape_springsteen
  doc = Nokogiri::HTML(open("https://brucespringsteen.net/albums"))
   
   #album_1 = self.new
   #album_1.title = doc.search("h2.title").text 
   
   site = "https://brucespringsteen.net/albums"
doc = Nokogiri::HTML(open(site))

albums = doc.css("div.album-minis a.album-mini")
puts albums.count

albums.each do |album|
  url = album.attr("href")
  title = album.css("span.title").text
  date = album.css("span.date").text
 Springsteen::Album title, date, url, ""
    end
 end 
end
end 

  Springsteen::Scraper.scrape_springsteen
  
  #def self.list 
    
   # album_1 = self.new 
    #album_1.title = "Greetings From Asbury Park, NJ"
    #album_1.date = January 5, 1973
    #album_1.url = https://brucespringsteen.net/albums/greetings-from-asbury-park-n-j-2
    #album_1.description = 
   
   
 
  
  