class Springsteen::Scraper 

require "nokogiri"
require "open-uri"


def self.scrape_springsteen
  site = "https://brucespringsteen.net/albums"
   
doc = Nokogiri::HTML(open(site))


album = doc.css("div.album-minis a.album-mini")
album.each do |album|
  url = album.attr("href")
  title = album.css("span.title").text
  date = album.css("span.date").text
  Springsteen::Album.new(title, date, url)
    end
 end 
 
 
end

def self.scrape_descriptions(album)
 site = "https://brucespringsteen.net/albums"
 doc = Nokogiri::HTML(open(@album.url))
  deets = doc.css("div.details")
  title = deets.css(".title").text
  info = deets.css("p").text
  notes = doc.css(".notes")
  release_date = notes.css("tr:first-child td").text
  label = notes.css("tr:nth-child(2) td").text
  producer = notes.css("tr:nth-child(3) td").text
end







  #Springsteen::Scraper.scrape_springsteen2
  
  
   
