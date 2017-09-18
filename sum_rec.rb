def sum_rec(nums)
    return 0 if nums.empty?
    nums[0] + sum_rec(nums[1..-1])
end

p sum_rec([1,2,3])