module Springsteen
class CLI 
  
 def call
   puts "Welcome to the Bruce Springsteen CLI!\nWould you like to see a list of Bruce Springsteen's albums?"
   input = ""
   input = gets.strip 
    until input == "exit"
      if input == "yes"  
        load_albums
        get_album
        sign_off
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
    chosen_album = gets.strip.to_i
    show_album_for(chosen_album) if valid_input(chosen_album, @albums)
  end 
  
  def valid_input(input, data)
    input.to_i <= data.length && input.to_i > 0
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

  

