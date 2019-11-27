require "nokogiri"
require "open-uri"
class Springsteen::Scraper 





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
 

  def self.scrape_descriptions(album)
    site = "https://brucespringsteen.net/albums"
    doc = Nokogiri::HTML(open(album.url))
    deets = doc.css("div.details")
    album.title = deets.css(".title").text
    album.info = deets.css("p").text
    notes = doc.css(".notes")
    album.release_date = notes.css("tr:first-child td").text
    album.label = notes.css("tr:nth-child(2) td").text
    album.producer = notes.css("tr:nth-child(3) td").text
  end

end


  
  
   
