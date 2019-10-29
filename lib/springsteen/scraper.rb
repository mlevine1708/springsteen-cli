require "nokogiri"
require "open-uri"

module Springsteen
class Scraper 
  

def self.scrape_springsteen
  doc = Nokogiri::HTML(open("https://brucespringsteen.net/albums"))
   
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

#def description_scrape
 # doc = Nokogiri::HTML(open("https://brucespringsteen.net/albums"))
  # site = "https://brucespringsteen.net/albums"
#doc = Nokogiri::HTML(open(site))
#doc.css("div.body description")
#end

end 

  Springsteen::Scraper.scrape_springsteen
  
  
   
   
 
  
  