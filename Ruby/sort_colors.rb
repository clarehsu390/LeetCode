def sort_colors(arr)
    swapped = true
    while swapped
        swapped = false
        (0...arr.length - 1).each do |i|
            if arr[i] > arr[i+1]
                arr[i], arr[i+1] = arr[i+1], arr[i]
                swapped = true
            end
        end
    end
    arr

end

p sort_colors([2,0,2,1,1,0])