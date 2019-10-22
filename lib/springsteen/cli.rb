class Springsteen::CLI 
  
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
    puts "Enter the number of the album you want more details about or type exit to end."
    input = nil 
    while input != "exit" 
      input = gets.strip
      case input
      when "1"
        puts "Greetings From Asbury Park, NJ"
      when "2"
        puts "The Wild, The Innocent, and the E Street Shuffle"
     when "3"
         puts "Born To Run"
      end 
    end
  end 
  
  def sign_off
    puts "Thank you for visiting!"
  end

end




