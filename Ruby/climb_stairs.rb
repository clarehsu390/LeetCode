#climb 1 or 2 steps at a time
#simple case: n == 1 || n == 2
#find pattern: fibonacci sequence 
def climb_stairs(n)
    return 1 if n == 1
    return 2 if n == 2
    #return [[1,1,1], [1,2], [2,1]]
    #return [[1,1,1,1], [1,1,2], [2,1,1], [1,2,1], [2,2]]

    climb_stairs(n-2) + climb_stairs(n-1)
end

p climb_stairs(3)


#memoization
def climb_stairs2(n)
    memo = {1 => 1, 2 => 2}
    return memo[n] if n <= 2
    memo[n] = climb_stairs(n-2) + climb_stairs(n-1) unless memo[n]
    memo[n]
end

p climb_stairs2(4)