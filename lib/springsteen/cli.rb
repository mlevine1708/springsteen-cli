module Springsteen
class CLI 
  
 def call
   puts "Welcome to the Bruce Springsteen CLI!\nWould you like to see a list of Bruce Springsteen's albums?"
   input = ""
   input = gets.strip 
    until input == "No"
      if input == "Yes"  
        load_albums
        get_album
        sleep 5
        another_one
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
    #binding.pry 
    Springsteen::Scraper.scrape_descriptions(chosen_album) if valid_input(input)
    puts chosen_album.info 
    puts chosen_album.notes 
    puts chosen_album.release_date
    puts chosen_album.label 
    puts chosen_album.producer
  end
  
  def another_one
    puts "Would you like to see another one?"
    input = ""
    input = gets.strip 
    if input == "Yes"
      call 
    if input == "No"
        puts "Thank you for visiting!"
        exit 
      end
    end
  end
  
  def valid_input(input)
    input.to_i <= @albums.length && input.to_i > 0
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

  

