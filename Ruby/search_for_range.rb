def search_range(nums, target)
    start = 0
    finish = 0
    hash = {}
    nums.each_with_index do |el, i|
        if hash[el] && el == target
            finish = i
        elsif !hash[el] && el == target
            start = i
            hash[el] = true
        end
    end
    return [-1, -1] if !hash[target]
    [start, finish]
end

p search_range([5,7,7,8,8,10], 6)