require "nokogiri"
require "open-uri"

module Springsteen
class Scraper 

def self.scrape_springsteen
  site = "https://brucespringsteen.net/albums"
   
doc = Nokogiri::HTML(open(site))


albums = doc.css("div.album-minis a.album-mini")
puts albums.count
albums.each do |album|
  url = album.attr("href")
  title = album.css("span.title").text
  date = album.css("span.date").text
  puts title, date, url, ""
    end
 end 
end

def self.scrape_sprigsteen2
  site = "https://brucespringsteen.net/albums"
 
 doc = Nokogiri::HTML(open(site))
 
  deets = doc.css("div.details")
  title = deets.css(".title").text
  info = deets.css("p").text
  notes = doc.css(".notes")
  release_date = notes.css("tr:first-child td").text
  label = notes.css("tr:nth-child(2) td").text
  producer = notes.css("tr:nth-child(3) td").text
  
end


end 




  #Springsteen::Scraper.scrape_springsteen2
  
  
   
  
