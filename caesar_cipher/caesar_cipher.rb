def caesar_cipher(word, shifter)
    split_array = word.split('')
    transformed_array = split_array.map! do |letter|
    new_letter = letter.ord + shifter
    new_letter.chr
    end
    puts transformed_array
  end
  
  caesar_cipher('hola', 5)