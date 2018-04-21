def combinations(n, k)
    arr = (1..n).to_a
    combination_helper(arr, k)
end

def combination_helper(arr, k)
    return [[]] if k == 0
    combos = []
    arr.each_with_index do |num, i|
        rest_combos = combination_helper(arr[i+1..-1], k - 1)
        rest_combos.each do |combo|
            combo << num
            combos << combo
        end
    end
    combos
end

p combinations(4, 2)