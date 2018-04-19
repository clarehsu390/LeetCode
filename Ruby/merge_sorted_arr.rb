def merge(nums1, m, nums2, n)
    s1, s2 = m - 1, n - 1
    cursor = m + n - 1

    while s1 >= 0 && s2 >= 0
        if nums1[s1] > nums2[s2]
            nums1[cursor] = nums1[s1]
            cursor -= 1
            s1 -= 1
        else
            nums1[cursor] = nums2[s2]
            cursor -= 1
            s2 -= 1
        end
    end

    while s2 >= 0
        nums1[cursor] = nums2[s2]
        cursor -= 1
        s2 -= 1
    end
    nil
end

p merge([1,2,3], 3, [3,4,5], 3)

def merge_sort(array)
    return array if array.length <= 1
    mid = (array.length/2).floor
    left = merge_sort(array[0...mid])
    right = merge_sort(array[mid..-1])
    merge2(left, right)
end

def merge2(left, right)
    merged = []
    while !left.empty? || !right.empty?
       case (left.pop <=> right.pop)
       when -1
        merged << left.pop
       when 0
        merged << left.pop
       when 1
        merged << right.pop
       end
    end
    merged += left
    merged += right
end
            
