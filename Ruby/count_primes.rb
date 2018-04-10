def count_primes(n)
    count = 0
    (2..n).each do |num|
        count += 1 if is_prime?(num)
    end
    count
end

def is_prime?(number)
    (2..9).each do |num|
        if number % num == 0 && number != num
            return false
        end
    end
    return true
end