def happy_number(num)
    return true if num == 1
    counter = 10
    while num != 1 && num < 100
        num = (num/10)**2 + (num % 10)**2
        return false if num < 10
    end

    while num != 1 && num >= 100
       num = (num/100)**2 + (num%100)**2
    end
    return true if num == 1
    false
end

p happy_number(20)
p happy_number(19)
p happy_number(100)
p happy_number(24)