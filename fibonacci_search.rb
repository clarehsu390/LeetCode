def fibonacci_search(arr, num)
  fib_num2 = 0
  fib_num1 = 1
  fib_m = fib_num2 + fib_num1
  
  while fib_m < num
    fib_num2 = fib_num1
    fib_num1 = fib_m
    fib_m = fib_num2 + fib_num1
  end
  offset = -1
  while fib_m > 1
    i = [offset + fib_num2, arr.length - 1].min
    if arr[i] < num
      fib_m = fib_num1
      fib_num1 = fib_num2
      fib_num2 = fib_m - fib_num1
      offset = i
    elsif arr[i] > num
      fib_m = fib_num2
      fib_num1 = fib_num1 - fib_num2
      fib_num2 = fib_m - fib_num1
    else
      return i
    end
    
    if fib_num1 == 1 && arr[offset+1] == num
      return offset + 1;
    end
    return -1
  end
end