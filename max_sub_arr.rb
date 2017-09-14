#have two pointers
def max_sum_array(nums)
    max = nums[0]
    (0..nums.length - 1).each do |i|
        (i+1..nums.length - 1).each do |j|
            sum = nums[i..j].reduce(:+)
            max = sum if max < sum
        end
    end
    max
end

p max_sum_array([-2,1,-3,4,-1,2,1,-5,4])