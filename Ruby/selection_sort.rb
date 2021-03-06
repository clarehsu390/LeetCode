def selection_sort(arr)
  arr.each_with_index do |el, idx|
    min_idx = idx
    (idx+1..arr.length-1).each do |j|
      if arr[j] < arr[min_idx]
        min_idx = j
      end
    end
    arr[idx], arr[min_idx] = arr[min_idx], arr[idx]
  end
    arr
end

p selection_sort([3,6,2,6,1])
p selection_sort([-1,-10,10,9,4,6])