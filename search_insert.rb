def search_insert(nums, target)
    i = 0
    while i < nums.length
        return i if nums[i] == target
        if nums[i] < target
            i += 1
        end
        break if nums[i] > target
    end

    i
        
end

p search_insert([1,3,5,6], 5) == 2
p search_insert([1,3,5,6], 2) == 1
p search_insert([1,3,5,6], 0) == 0
