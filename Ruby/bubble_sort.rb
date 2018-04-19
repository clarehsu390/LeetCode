def bubble_sort(arr)
    swapped = true
    counter = 0
    while swapped #so it doesn't continuously swap 
        swapped = false
        (0..arr.length - 2).each do |i|
            if arr[i] > arr[i+1]
                arr[i], arr[i+1] = arr[i+1], arr[i]
                swapped = true
            end
        end
    end
    arr
end

p bubble_sort([2,3,1,5,4])