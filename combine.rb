#Given two integers n and k, return all possible combinations of k numbers out of 1..n 

def combine(n, k)
    nums = (1..n).to_a
    nums.combination(k).to_a


end

p combine(4, 2)