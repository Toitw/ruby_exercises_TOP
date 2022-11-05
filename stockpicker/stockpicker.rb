def stock_picker(arr)
    max_pair = []
    new_arr = arr.combination(2).to_a
    result_arr = Hash.new
    new_arr.map! do |pair|
        pair.reduce do |acum, num|
            result_arr["#{acum}, #{num}"] = (num - acum)
        end
    end
    max_profit = result_arr.select do |k, v| 
        v == result_arr.values.max
    end
    puts "#{max_profit.keys} # for a profit of $#{max_profit.values}"
  end

  stock_picker([17,3,6,9,15,8,6,1,10])