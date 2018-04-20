def word_ladder(begin_word, end_word, word_list)
    return 0 unless word_list.include?(end_word)

    current = begin_word
    counter = 0
    while (current != end_word)
        word_list.each do |word|
            if current.chars.count {   |x| word.chars.include?(x) } == current.length - 1
                current = word
                counter += 1
            end
        end
    end
    counter
end

p word_ladder('hit', 'cog', ["hot","dot","dog","lot","log","cog"])