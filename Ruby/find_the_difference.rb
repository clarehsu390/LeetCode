def find_the_difference(s, t)
    hash = {}
    s.each_char do |ch|
        hash[ch] = true
    end

    t.each_char do |ch|
        return ch if !hash[ch]
    end
end

p find_the_difference('abcd', 'abcde')