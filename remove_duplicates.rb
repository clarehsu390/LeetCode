#remove duplicates from a sorted array
#Do this in o(n) time
def remove_duplicates(nums)
    size = nums.length
    idx = 0
    
    while idx < nums.length
        pointer = nums[idx]
        if pointer == nums[idx+1]
            nums.delete(nums[idx+1])
            size -= 1
        end

        idx += 1
    end

    size


end

p remove_duplicates([1,1,2])