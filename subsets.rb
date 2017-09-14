#generate all possible subsets
#start with empty subset


def subsets(nums)
    return [[]] if nums.empty?
    last = nums.pop
    subs = subsets(nums)
    subs.concat(subs.map {|sub| sub + [last]})
end

p subsets([1,2,3])