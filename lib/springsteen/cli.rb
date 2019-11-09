module Springsteen
class CLI 
  
 def call
   puts "Welcome to the Bruce Springsteen CLI"
   @input = ""
   until @input == "exit"
  self.load_albums
  find_descriptions
  sign_off
end

 def self.load_albums
   @album = Springsteen::Album.all
 end
 
 def find_descriptions
   puts "If you want to learn more about an album, enter its number: "
    @album.each.with_index(1) do |album, index| 
      puts "#{index}. #{album.name}"
   end
 end
end 
    
end
  #def sign_off
  #  puts "Thank you for visiting!"
 # end
  
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
