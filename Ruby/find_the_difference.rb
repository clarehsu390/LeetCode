def find_the_difference(s, t)
   s = s.chars.sort.join
   t = s.chars.sort.join
   j = 0 
   t.each_char.with_index do |ch, i|
        if ch != s[j]
            return ch
        end
        j += 1
    end
    nil
end

p find_the_difference('abcd', 'abcde')
p find_the_difference('a', 'aa')