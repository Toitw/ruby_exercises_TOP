dictionary = ["yo", "no", "si", "tampoco", "como", "que", "casi"]

def substrings(words, dict)
    words_array = words.downcase.split(" ")
    result = words_array.reduce(Hash.new(0)) do |count, item|
        dict.map do |word| 
            if item.include? word
                count[item] += 1
                count
            end
        end
    end
    puts result
end

substrings("quepa yogur proBAR nocilla queno", dictionary)
