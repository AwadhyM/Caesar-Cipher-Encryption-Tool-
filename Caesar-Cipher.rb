require 'pry-byebug'

##Empty variables
message = ""
shift_factor = ""

##Get input from user and store answer in variable 
#Use .empty? In order to establish condition that repeats prompt if user enters 
while message.empty? == true 
    puts "Enter the message that you would like to encrypt"
    message = gets.chomp 
end 

#Loop that repeats prompt if user enters nothing and also checks that input is a number 
while shift_factor.to_s.empty? == true 
    puts "Enter the shift factor that will determine how your message is encrypted"
    shift_factor = gets.chomp 
    if (shift_factor != "") && (shift_factor.ord >= 48 && shift_factor.ord <= 57)
        shift_factor.to_i
    else 
        shift_factor = ""
    end
end