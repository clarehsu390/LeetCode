#O(n) implementation
def search_rotated_array(arr, target)
    nums.each_with_index do |num, i|
        return true if target == num
    end
    false
end

#O(logn) implementation
def search_rotated_array2(arr, target)
    return false if arr.length == 0
    middle = ((arr.length-1)/2).floor
    left = arr[0..middle]
    right = arr[middle+1..-1]
    return true if arr[middle] == target
    if target > left[0] || target > right[0]
        return left[0] > right[0] ? search_rotated_array2(left, target) : search_rotated_array2(right, target)
    elsif target < left[0] || target < right[0]
        return left[0] > right[0] ? search_rotated_array2(right, target) : search_rotated_array2(left, target)
    end
    false
end

p search_rotated_array2([2,5,6,1,0,1,2], 6)
