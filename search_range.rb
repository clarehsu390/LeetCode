def search_range(nums, target)
    start = nil
    ending = nil
    nums.each_with_index do |el, idx|
        if el == target && start
            ending = idx
        elsif el == target
            start = idx unless start
            ending = start if el != nums[idx+1]
        end
    end
    return [-1, -1] unless start
    [start, ending]


end

p search_range([5, 7, 7, 8, 8, 10], 8)