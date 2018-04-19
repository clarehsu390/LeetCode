#O(n)
def search_range(nums, target)
    start = 0
    finish = 0
    hash = {}
    nums.each_with_index do |el, i|
        if hash[el] && el == target
            finish = i
        elsif !hash[el] && el == target
            start = i
            hash[el] = true
        end
    end
    return [-1, -1] if !hash[target]
    [start, finish]
end

#O(log n)

def search_range2(nums, target)
    left = 0
    right = nums.length - 1
    while left <= right
        mid = (left + right)/2
        if nums[mid] == target #if this is target -- check for the range
            if nums[left] == target && nums[right] == target
                return [left, right]
            elsif nums[left] != target
                left += 1
            else
                right -= 1
            end
        elsif nums[mid] < target
            left = mid + 1 #check the next element
        else 
            right = mid - 1 #check the element before
        end
    end
    [-1, -1]
end


p search_range2([5,7,7,8,8,10], 8)