def majority_element(nums)
    hash = {}
    nums.each do |num|
        if hash[num]
            hash[num] += 1
        else 
            hash[num] = 1
        end
    end
    hash.select {|k,v| v > nums.length/2}.keys[0]
end