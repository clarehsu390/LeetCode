def first_missing_positive(nums)
    num = 1
    return 1 if nums.empty?
    actual_sum = (1..nums.max).to_a.reduce(:+)
    total = nums.reduce(:+)

    if actual_sum - total > 0
        return actual_sum - total
    elsif actual_sum - total == 0
        return nums.max + 1
        
    end
end

p first_missing_positive([1,2,0])
p first_missing_positive([2])