def add_strings(num1, num2)
    i = 0
    result = 0
    num1 = num1.split
    num2 = num2.split
    until num1.empty? && num2.empty?
       result += ((num1.pop.to_i + num2.pop.to_i) * (10 ** i))
       i += 1
    end
    result
end

p add_strings("17", "426")