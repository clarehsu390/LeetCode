def length_of_last_word(s)
    return 0 if s.split.length == 0
    s.split[-1].length
end

p length_of_last_word("hello world") == 5