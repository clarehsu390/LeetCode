#Find all unique triplets in the array which gives the sum of zero.

def three_sums(nums)
    nums.sort!
    new_arr = []
    #three pointers -> current, left, right
    idx = 0
    sum = - nums[idx]
    left = idx + 1
    right = nums.length - 1
    return [] if nums.select {|el| el >= 0}.empty?
    
    while right > left && idx < nums.length
        if nums[left] + nums[right] < sum
            left += 1
        elsif nums[left] + nums[right] > sum
            right -= 1
        elsif nums[idx] + nums[left] + nums[right] == 0
            new_arr << [nums[idx], nums[left], nums[right]]
            left += 1
            right -= 1
        end
        idx += 1
    end

    new_arr
end

p three_sums([-1, 0, 1, 2, -1, -4])

        




        