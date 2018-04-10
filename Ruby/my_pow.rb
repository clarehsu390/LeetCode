def my_pow(x, n)
    return 1 if n == 0
    x * my_pow(x, n - 1)
end

p my_pow(6, 3)