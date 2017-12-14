def remove_element(nums, val)
    nums.each do |el|
        nums.delete(el) if el == val
    end
    nums.length
end


def remove_element2(nums, val)
    nums.reject {|el| el == val}.length
end


def remove_element3(nums, val)
    result = []
    nums.each do |num|
        result << num if num != val
    end
    result.length
end


p remove_element2([1,2,3,3,2], 3) == 3
p remove_element2([3,2,2,3], 3) == 2
p remove_element3([1,2,2,3,3], 3) === 3
p remove_element2([2], 3)