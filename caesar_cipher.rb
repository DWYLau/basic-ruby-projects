def caesar_cipher(string, shift_factor)
    ciphered_string = []
    alphabet_uppercase = ("A".."Z").to_a
    alphabet_lowercase = ("a".."z").to_a
    split_string = string.split("")
 
    split_string.each do |letter|
        if alphabet_uppercase.include?(letter)
            rotated_alphabet = alphabet_uppercase.rotate(shift_factor)
            index = alphabet_uppercase.find_index(letter)
            ciphered_string << rotated_alphabet[index]
        elsif alphabet_lowercase.include?(letter)
            rotated_alphabet = alphabet_lowercase.rotate(shift_factor)
            index = alphabet_lowercase.find_index(letter)
            ciphered_string << rotated_alphabet[index]
        else
            ciphered_string << letter
        end
    end
    puts ciphered_string.join
end

caesar_cipher("What a string!", 5)