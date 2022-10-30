def caesar_cipher(word, shifter)
    split_array = word.split('')
    transformed_array = split_array.map! do |letter|
    if letter == " " 
      new_letter = " "
    else 
      new_letter = letter.ord + shifter
      new_letter.chr
    end
  end
    puts transformed_array.join("")
  end
  
  caesar_cipher('hola que tal', 5)