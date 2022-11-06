def bubble_sort(arr)
    num_of_loops = arr.length - 1
    num_of_loops.times do
    arr.each_with_index do |num, index|
        next_num = arr[index+1]
            if index < num_of_loops
             if num > next_num
                arr[index], arr[index+1] = arr[index+1], arr[index]
             end
            else
                next
            end
    end
end
puts arr
end

bubble_sort([4,3,78,2,0,2])