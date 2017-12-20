#have two pointers
def max_sum_array(nums)
    #O(n**2)
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

def max_sum_array2(nums)
    #O(n)
    max = nums[0]
    sum = 0
    nums.each do |el|
        if sum < 0
            sum = el
        else
            sum += el
        end

        max = sum if sum > max
    end
    max
end

p max_sum_array2([-2,1,-3,4,-1,2,1,-5,4])
p max_sum_array2([-2,-1,-2,-4])