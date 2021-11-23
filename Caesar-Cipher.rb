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
            letter = letter
        elsif alphabet.include?(letter) == true
           j = alphabet.index(letter)
           m = alphabet.index(letter)
           new_index = alphabet.index(letter) + shift_factor.to_i
           while m < new_index 
            if j == 26
              j = 0
              j += 1
            elsif j < 26 && j != 0
              j += 1
            end
            letter = alphabet[j]
            m += 1
          end
          if j == 26
            letter = alphabet[0]
          end
    end
    letter
    end
    puts array.join("")
end
    

caesar_cipher(message,shift_factor)


