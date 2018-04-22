def contains_duplicates(arr)
    hash = {}
    arr.each do |el|
        return true if hash[el]
        hash[el] = true
    end
    false
end

def contains_duplicates2(arr)
    arr.uniq.length == arr.length
end

def contains_duplicates3(nums, k)
    nums.each_with_index do |el, i|
        (i+1..nums.length - 1).each do |j|
            if j - i <= k
                return true if el == nums[j]
            end
        end
    end
    false
end

p contains_duplicates3([1,1,0,2,3], 1)