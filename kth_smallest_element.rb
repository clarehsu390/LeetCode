def partition(array, start, length, &prc)
    prc ||= Proc.new({|x,y| x <=> y})
    new_pivot = start + rand(length)
    array[start], array[new_pivot] = array[new_pivot], array[start]

    pivot_idx = start
    pivot = array[start]

    ((start+1)...(start+length)).each do |idx|
        if (prc.call(pivot, array[idx])) > 0
            array[idx], array[pivot_idx] = array[pivot_idx], array[idx]
            pivot_idx += 1
        end
    end

    array[start], array[pivot_idx] = array[pivot_idx], array[start]
    pivot_idx
end

def kth_smallest(array, k)
    left = 0
    right = array.length - 1
    while true
        return array[left] if left == right
        pivot_idx = partition(array, left, right - left + 1)
        if k - 1 == pivot_idx
            return array[k-1]
        elsif k - 1 < pivot_idx
            right = pivot_idx - 1
        else
            left = pivot_idx + 1
        end
    end
end


