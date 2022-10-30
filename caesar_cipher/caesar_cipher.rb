def caesar_cipher(word, shifter)
  #First create a 1 letter array
    split_array = word.split('')
  #Run map to do an action to every letter
    transformed_array = split_array.map! do |letter|
  #If letter is blank, then return blank
      if letter == " "
        new_letter = " "
  #If leter is cap, then downcase, check if suming the shifter pass the 122 charcode mark
  #and convert it to string + upcase
    # 65 - 90 for A-B
    # 97 - 122 for a-b
      elsif letter.ord >= 65 && letter.ord <= 90
        letter_value = (letter.downcase.ord + shifter) - 122
        if letter.downcase.ord + shifter > 122
          new_letter = (letter_value + 96)
          new_letter.chr.upcase
        else
          new_letter = (letter.downcase.ord + shifter)
          new_letter.chr.upcase
        end
  #If no cap, check if when suming the shifter surpass the 122 charcode mark
  #and depending start over or return it back to string
      elsif letter.ord >= 97 && letter.ord <= 122
          if letter.ord + shifter > 122
            letter_value = (letter.ord + shifter) - 122
            new_letter = (letter_value + 96)
            new_letter.chr
         else
            new_letter = letter.ord + shifter
            new_letter.chr
         end
      end
    end
  #Join the array togueter
    puts transformed_array.join("")
end
  
  caesar_cipher('Ahora Funciona', 2)