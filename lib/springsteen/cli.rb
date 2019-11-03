module Springsteen
class CLI 
  
 def load_albums
   Springsteen::Album.create_album
 end
 
 def call
  start
  list_albums
  find_descriptions
end
  
  def start 
    puts "Welcome to the Bruce Springsteen CLI"
  end 
    
    def sign_off
    puts "Thank you for visiting!"
  end
  
  def list_albums
    puts "Would you like to see a list of Bruce Springsteen's albums? Enter 'y' or 'n'"
    input = gets.strip
     if input == "y"
       Springsteen::Scraper.scrape_springsteen
       elsif input == 'n'
         sign_off
   end
 end
 
 def find_descriptions
   puts "If you want to learn more about an album, enter its name: "
   input = gets.strip
   if input = "Greetings from Asbury Park, N.J."
     Springsteen::Scraper 
   end
 end
end 
    
  
  #def which_album
   #puts  "Welcome to the Bruce Springsteen CLI!"
   # @album = Springsteen::Album 
   # @album.each.with_index(1) do |album, i|
    # puts "#{i}. #{album.self}"
    #end
  #end
  
  def album
     @albums = Springsteen::Album
    @albums.each.with_index(1) do |album, i|
      puts "#{i}. #{album.title} - #{album.date} - #{album.url}"
    end
  end
  
  
  


    end
  #end





