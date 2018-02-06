def rotate(nums, k)
   k = k % nums.length
   reverse(nums, 0, nums.length - 1) #reverse the whole array
   reverse(nums, 0, k - 1) #reverse the elements from 0 to k - 1
   reverse(nums, k, nums.length - 1) #reverse the elements from k to n - 1
end

def reverse(nums, start, last)
    while start < last
        temp = nums[start]
        nums[start] = nums[last]
        nums[last] = temp
        start += 1
        last -= 1
    end
    nums
end

p rotate([1,2,3,4,5,6,7], 3)