def int_to_roman(s)
    romans = {'I' => 1, 'V' => 5, 'X' => 10, 'L' => 50, 'C' => 100, 'D' => 500, 'M' => 1000}
    result = ""
    romans.each do |letter, value|
        result << letter * (s/value)
        s = s % value
    end
    return result

end

p int_to_roman(9)

