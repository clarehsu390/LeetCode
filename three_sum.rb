#Find all unique triplets in the array which gives the sum of zero.

def three_sums(nums)
    nums.sort!
    new_arr = []
    #three pointers -> current, left, right
    sum = nums[idx]
    idx = 0
    left = idx + 1
    right = nums.length - 1
    while right > left
        




        