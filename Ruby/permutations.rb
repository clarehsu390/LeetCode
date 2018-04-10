def permutations(nums)
    return [nums] if nums.length <= 1
    first = nums.shift
    perms = permutations(nums)
    total = []
    perms.each do |perm|
        (0..perm.length).each do |i|
            total << perm[0...i] + [first] + perm[i..-1]
        end
    end
    total

end

p permutations([1,2,3])