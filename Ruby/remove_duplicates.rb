#remove duplicates from a sorted array
#Do this in o(n) time
def remove_duplicates(nums)
    size = nums.length
    idx = 0
    
    while idx < nums.length
        pointer = nums[idx]
        if pointer == nums[idx+1]
            nums.delete(nums[idx+1])
            size -= 1
        end

        idx += 1
    end

    size


end

def remove_duplicates2(nums)
    return [] if head.nil?
    hash = Hash.new(0)
    while head
        if hash[head.val]
            hash[head.val] += 1
        else
            hash[head.val] = 1
        end
        head = head.next
    end
    hash.keys
end

p remove_duplicates([1,1,2, 3, 3])

def remove_duplicates3(nums)
    hash = Hash.new(0)
    count = 0

    nums.each do |num|
        if hash[num] < 2
            hash[num] += 1
        end
    end
    hash.each do |k,v|
        count += v
    end
    count


end

p remove_duplicates3([1,1,1,2,2,3])