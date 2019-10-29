
class Springsteen::CLI 
  
  
  
  def initialize
    Springsteen::Album 
  end
  
  def call
    which_album
    album
    sign_off
  end
  
  def which_album
    puts  "Welcome to the Bruce Springsteen CLI!"
    puts "Which Bruce Springsteen album do you want to learn about?"
  end
  
  def album
     @albums = Springsteen::Album
    @albums.each.with_index(1) do |album, i|
      puts "#{i}. #{album.title} - #{album.date} - #{album.url}"
    end
      end 
    end
  
  
  def sign_off
    puts "Thank you for visiting!"
  end





