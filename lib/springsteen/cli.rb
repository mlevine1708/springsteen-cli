module Springsteen
class CLI 
  
 def call
   puts "Welcome to the Bruce Springsteen CLI!\nWould you like to see a list of Bruce Springsteen's albums?"
   input = ""
   input = gets.strip 
    until input == "exit"
      if input == "Yes"  
        load_albums
        get_album
        #sign_off
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
    scrape_descriptions(@album) if valid_input(input)
  end

  def scrape_descriptions(albums)
    album = @albums[chosen_album -1]
    album.get_album
    puts "Here are the details for #{album.name}"
  end
  
  def chosen_album
    self.scrape_descriptions
  end 
 # end
  
  def valid_input(input)
    input.to_i <= @albums.length && input.to_i > 0
  end 
    
end
  
  def sign_off
    puts "Thank you for visiting!"
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

  

