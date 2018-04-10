#Find all unique triplets in the array which gives the sum of zero.

def three_sums(nums)
   nums.sort!
   result = []

   (0..nums.length - 3).each do |i|
   left = i + 1
   right = nums.length - 1
    while left < right
    sum = nums[i] + nums[left] + nums[right] 
        
            if sum == 0
                result << [nums[i], nums[left], nums[right]] unless result.include?([nums[i], nums[left], nums[right]])
                left += 1
                right -= 1

            elsif sum < 0
                left += 1
            else
                right -= 1
            end
        end
    end

    result
end

p three_sums([-1, 0, 1, 2, -1, -4])

        




        