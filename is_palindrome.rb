def is_palindrome(x)
  x_arr = x.to_s.chars
  start = 0
  last = x_arr.length - 1
  return true if start == last
  while start < last
    return false if x_arr[start] != x_arr[last]
    start += 1
    last -= 1
  end
  true
end

p is_palindrome(1001)
p is_palindrome(125)
