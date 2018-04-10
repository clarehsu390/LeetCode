def move_int(arr,i)
    result = []
    result2 = []

    arr.each do |el|
        if el == i
            result2 << el
        else
        result << el
        end
    end
    result += result2
end

p move_int([1,10,20,3,10], 3)
p move_int([1,3,3,4,5], 3)