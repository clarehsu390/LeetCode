def divide(dividend, divisor)
    count = 0
    until dividend - divisor < 0
        dividend = dividend - divisor
        count += 1
    end
    count
end

p divide(20, 4)
p divide(30, 5)
p divide(100, 20)

def divide(dividend, divisor)
    count = 0
    until dividend - divisor < 0
        dividend = dividend - divisor
        count += 1
    end
    count
end