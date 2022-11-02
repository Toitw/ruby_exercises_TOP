dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

def substrings(words, dict)
    words_array = words.downcase.split(" ")
    result = Hash.new(0)
    dict.map do |item|
        words_array.map do |word| 
            if word.include? item
                result[item] += 1
            end
         end
        end
        puts result.select {|k,v| v > 0}
end

substrings("bHowdy partner, sit down! How's it going?", dictionary)
