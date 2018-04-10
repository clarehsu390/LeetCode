def combination_sum(candidates, target)
    arr = []
    return [[]] if candidates.empty?
    return [candidates] if target == candidates.reduce(:+)
    last = candidates.pop
    previous = combination_sum(candidates[0..-1], target)
    
    previous + combination_sum(candidates, target - last)
end

p combination_sum([2, 3, 6, 7], 7)