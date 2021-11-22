require 'pry-byebug'

##Empty variables. Useful for next 2 blocks of code which control input
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


#method 
def caesar_cipher(message, shift_factor)
    #arrayofletters - so that letters can be converted into numbers
    array = message.split("")
    array.map! do |letter| 
    if letter == letter.downcase 
        alphabet = ("a".."z").to_a 
    elsif letter == letter.upcase
        alphabet = ("A".."Z").to_a 
    end
    #Code that will keep punctuation,symbols,numbers and spaces the same
        if alphabet.include?(letter) == false
            new_letter = letter
        else
            alpha_i = alphabet.index(letter) 
            new_i = shift_factor.to_i + alpha_i.to_i
            alpha_i = alphabet.index(letter) 
            new_i = shift_factor.to_i + alpha_i.to_i
        #Condition that allows us to wrap from A - Z e.g. ("W",5) returns "B"
        if new_i > 26
            math = new_i - 26
            new_letter = alphabet[math]
        else 
            new_letter = alphabet[new_i]
    end
    end
end
    puts array.join("")
end 


caesar_cipher(message,shift_factor)

