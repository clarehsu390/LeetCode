def remove_element(nums, val)
    nums.each do |el|
        nums.delete(el) if el == val
    end
    nums
end

p remove_element([1,2,3,3,2], 3)


def remove_element2(nums, val)
    nums.reject {|el| el == val}.length
end


p remove_element2([1,2,3,3,2], 3)
p remove_element2([3,2,2,3], 3)