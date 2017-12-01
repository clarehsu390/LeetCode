def single_numbers(nums)
    nums.reduce(:^)
end

p single_numbers([1,1,2,3,3])
p single_numbers([100,100,101,101,102,102,103])