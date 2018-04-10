def length_of_longest_substring(s)
    arr = []
    max_length = 0
    s.each_char do |ch|
        if arr.include?(ch)
            i = arr.find_index(ch)
            arr = arr[i+1..-1]
            arr << ch
        else
            arr << ch
        end
        max_length = arr.length if arr.length > max_length
    end
    max_length
end

p length_of_longest_substring("abcabcbb")