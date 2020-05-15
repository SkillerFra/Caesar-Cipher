#gets text input from user and make it into ASCII number
puts "Please enter The text you want to encrypt!"
user_input = gets.chomp.bytes

#gets shiftnumber and makes it to integral 
puts "How much do you want to shift your text? Type in a number(max. 26)!"
shift_num = gets.chomp.to_i

#loop if shiftnumber is greater then 26 (one loop through alphabet), ask again
while shift_num > 26 do
    puts "The highest number you can shift is 26! Please put in a valid number"
    shift_num = gets.chomp.to_i
 end

#encryptionphase depending on ASCII number 
user_input_logic = user_input.map! do |letter|
    if letter >= 65 && letter <= 90 && letter + shift_num > 90
        reminder_uppercase = letter + shift_num - 90
        65 + reminder_uppercase - 1 
        
    elsif letter >= 65 && letter <= 90 && letter + shift_num <= 90
        letter + shift_num 

    elsif letter >= 97 && letter <= 122 && letter + shift_num > 122
        reminder_lowercase = letter + shift_num - 122
        97 + reminder_lowercase - 1

    elsif letter >= 97 && letter <= 122 && letter + shift_num <= 122
        letter + shift_num
    else 
        letter
    end
end
 
#def the encryption method that gets called and changes ASCII into "letters".
def caesar_cipher (user_input_logic, shift_num)
    user_input_logic.pack("c*")
end

# calling method
p caesar_cipher(user_input_logic , shift_num)



