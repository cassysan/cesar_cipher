
def ceasar_cipher(string, offset)
    upcase_alpha = ('A'..'Z').to_a
    downcase_alpha = ('a'..'z').to_a
    string = string.split('')
    cipher_string = ''

    string.map do |letter|
      if letter.upcase == letter.downcase
          cipher_string += letter
      elsif letter == letter.upcase
          cipher_string += upcase_alpha[(upcase_alpha.index(letter) + offset) % 26]
      elsif letter == letter.downcase
          cipher_string += downcase_alpha[(downcase_alpha.index(letter) + offset) % 26]
      end
  end
    puts cipher_string
end

  ceasar_cipher('What a string!', 5)
  ceasar_cipher('Where are you now that I need you', 2)
  ceasar_cipher("Dtz'qq sjajw xytu rj stb!!!!", -5)

#change string to array
#find index of character (make sure to loop back around z-a)
#subtract offset to index and find new character to add to cipher
#find casing of character and add casing to character, add to cipher array
#join cipher array and return

