module Springsteen
class CLI 
  
 def call
  start
  which_album
end
  
  def start 
    puts "Welcome to the Bruce Springsteen CLI"
    scraper.scrape_springsteen
  end 
    
  
  def which_album
   #puts  "Welcome to the Bruce Springsteen CLI!"
    @album = Springsteen::Album 
    @album.each.with_index(1) do |album, i|
     puts "#{i}. #{album.self}"
    end
  end
  
  def album
     @albums = Springsteen::Album
    @albums.each.with_index(1) do |album, i|
      puts "#{i}. #{album.title} - #{album.date} - #{album.url}"
    end
  end
  
  
  def sign_off
    puts "Thank you for visiting!"
  end


end

end

