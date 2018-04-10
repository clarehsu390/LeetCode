def length_of_longest_substring(string)
    count = string[0]

    string.each_char.with_index do |ch, idx|
        (idx+1..string.length - 1).each do |j|
            if string[idx..j].chars.uniq == string[idx..j].chars
                count = string[idx..j] if string[idx..j].length >= count.length
            end
        end
    end
    count.length
end
            

p length_of_longest_substring("abcabcbb")