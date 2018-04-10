def count_and_say(n)
    return [] if n.empty?
    output = [[1, n[0]]]
    (1..n.length - 1).each do |idx|
        el = n[idx]
        if el == output.last[1]
            output.last[0] += 1
        else
            output << [1, el]
        end
    end

    output
end

p count_and_say([1, 2, 1, 1]) == [[1, 1], [1, 2], [2, 1]]