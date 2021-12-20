def bubble_sort(array)
    n = array.length 

    loop do
        # [1,4,1,2,3,3]
        # [1,1,4,2,3,3]
        # [1,1,2,4,3,3]
        # [1,1,2,3,4,3]
        # [1,1,2,3,3,4]
        swapped = false

        (n-1).times do |i|
            if array[i] > array[i+1]
                # simple way to swap in ruby - swapping the array element to the opposite one 
                array[i], array[i+1] = array[i+1], array[i]
                swapped = true
            end
        end
        break if not swapped
    end
    array
end

a = [1,4,1,2,3,3]
puts bubble_sort(a)