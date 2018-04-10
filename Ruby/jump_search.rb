#Jump Search - searching algorithm for sorted arrays

def jump_search(arr, num)
  step = arr.length ** 0.5
  prev = 0 
  while prev < arr.length
    prev += step
    while prev < arr.length
      if arr[prev] == num
        return prev.to_i
      end
        prev += 1
    end
  
  end
  -1
end

array = [0, 1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89, 144, 233, 377, 610]
p jump_search(array, 55)
  
  