def convert(s, num_rows)
    new_arr = Array.new(num_rows) {Array.new}
    s.chars.each_with_index do |ch, idx|
            new_arr[(idx) % num_rows] << ch
    end
        new_arr.join("")
end

p convert("ABC", 2) == "ACB"
