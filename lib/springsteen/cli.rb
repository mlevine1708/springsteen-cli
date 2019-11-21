module Springsteen
class CLI 
  
 def call
   puts "Welcome to the Bruce Springsteen CLI!" 
   start 
 end
 
   
 def start
   puts "Would you like to see a list of Bruce Springsteen's albums? Enter Yes or No."
   input = ""
   input = gets.strip 
      if input == "Yes" || input == "yes" || input == "y" || input == "Y"
        load_albums
        get_album
        sleep 5
        puts "Do you want to start over? Enter Yes or No."
    input = ""
    input = gets.strip 
      if input == "Yes" || input == "yes" || input == "y" || input == "Y"
        start      
      elsif input == "No"  || input == "no" || input == "n" || input == "N"
        puts ""
        puts "Thank you for visiting!"
        exit 
      else 
        puts ""
        puts "I don't understand that answer."
        start 
      end
    end
  end 
 

  def load_albums
   @albums = Springsteen::Album.all
   @albums.each.with_index(1) do |album, index| 
      puts "#{index}. #{album.title}"
   end
  end
 
  def get_album
    puts "Which album would you like to learn about?"
    input = gets.strip.to_i
    chosen_album = Springsteen::Album.all[input -1]
    Springsteen::Scraper.scrape_descriptions(chosen_album) 
    puts chosen_album.info 
    puts chosen_album.notes 
    puts chosen_album.release_date
    puts chosen_album.label 
    puts chosen_album.producer
    end
  end 
  
  
  
  def album
    @albums.each.with_index(1) do |album, i|
      puts "#{i}. #{album.title} - #{album.date} - #{album.url}"
    end
  end

end 
