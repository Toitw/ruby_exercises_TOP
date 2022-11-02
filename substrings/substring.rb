dictionary = ["yo", "no", "si", "tampoco", "como", "que", "casi"]

def substrings(words, dict)
    words_array = words.downcase.split(" ")
    result = Hash.new
    words_array.map do |item|
        result[item] = 0
        dict.map do |word| 
            if item.include? word
                result[item] +=1
            end
         end
        end
        puts result.select {|k,v| v > 0}
end

substrings("quepa yogur proBAR nocilla queno", dictionary)
