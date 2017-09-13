def permute_unique(nums)
    return [nums] if nums.length <= 1
    first = nums.shift
    perms = permute_unique(nums)
    total = []

    perms.each do |perm|
        (0..perm.length).each do |i|
            subset = perm[0...i] + [first] + perm[i..-1]
            total << subset unless total.include?(subset)
        end
    end
    total
end

p permute_unique([1,1,2]) == [
  [1,1,2],
  [1,2,1],
  [2,1,1]
]