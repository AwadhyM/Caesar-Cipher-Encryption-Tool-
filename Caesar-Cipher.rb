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

