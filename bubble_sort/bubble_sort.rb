def bubble_sort(arr)
    num_of_loops = arr.length - 1
    #Instead of add a switch, I expect the function to works the arr length - 1 times
    num_of_loops.times do
    #Each time the function compare the num with the next_num
    arr.each_with_index do |num, index|
        next_num = arr[index+1]
    #This if is to be sure that it doesn't compare the last value with the next (which is nil)
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