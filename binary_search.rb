def binary_search(arr, num)
  mid = arr.length/2
  arr.each_with_index do |el, idx|
    if el == num
      return idx
    elsif el < num
      larger_half = binary_search(arr[idx+1..-1])
      larger ? mid + larger - 1 : -1
    else
      binary_search(arr[0...idx])
    end
  end
  -1
end