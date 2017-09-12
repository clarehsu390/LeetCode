def remove_element(nums, val)
    nums.each do |el|
        nums.delete(el) if el == val
    end
    nums
end

p remove_element([1,2,3,3,2], 3)