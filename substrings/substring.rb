dictionary = ["yo", "no", "si", "tampoco", "como", "que", "casi"]

def substrings(words, dict)
    words_array = words.downcase.split(" ")
    result = Hash.new
    words_array.reduce(0) do |count, item|
        result[item] = 0
        dict.map do |word| 
            if item.include? word
                result[item] +=1
                puts result
            end
         end
        end
end

substrings("a proBAR nocilla queno", dictionary)

