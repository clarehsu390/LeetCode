def linear_search(arr, num)
  #return index of element, if not found, return -1
  
  arr.each_with_index do |el, idx|
    return idx if el == num
  end
  
  -1
  
end

p linear_search([4,2,3,20,-2,5,6], 20) == 3