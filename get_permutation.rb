def get_permutation(n, k)
    nums = (1..n).to_a
    permutation(nums)[k+1].join
    
end

def permutation(nums)
    return [nums] if nums.empty?
    total = []
    first = nums.shift
    perms = permutation(nums)
    perms.each do |perm|
        (0..perm.length).each do |i|
            total << perm[0...i] + [first] + perm[i..-1]
            end
        end
        total
    end

p get_permutation(3, 2)