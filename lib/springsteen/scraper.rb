require "nokogiri"
require "open-uri"

module Springsteen
class Scraper 

def self.scrape_springsteen
  url = "https://brucespringsteen.net/albums"
   
doc = Nokogiri::HTML(open(url))


albums = doc.css("div.album-minis a.album-mini")
puts albums.count


albums.each do |album|
  url = album.attr("href")
  title = album.css("span.title").text
  date = album.css("span.date").text
    end
 end 
end



end 

  Springsteen::Scraper.scrape_springsteen
  
  
   
   
