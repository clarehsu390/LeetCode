def is_palindrome(s)
    start = 0
    last = s.gsub(/\W+/, '').length - 1
    # string = s.chars
    s = s.gsub(/\W+/, '')
    return true if start == last
    while start < last
        return false if s[start].downcase != s[last].downcase
        start += 1
        last -= 1
    end
    true
end

p is_palindrome("A man, a plan, a canal: Panama")
p is_palindrome("race a car")