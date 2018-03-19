OPERATIONS = [
    "add",
    "delete",
    "change",
    "anagram"
]
def find_lowest_cost(costs, word1, word2)
    costs_hash = {}
    (0..3).each do |i|
        operation = OPERATIONS[i]
        costs_hash[operation] = costs[i]
    end
    length1 = word1.length
    length2 = word2.length
    return length1 if length2 == 0
    return length2 if length1 == 0
    result = Array.new(length1)
    (0..length2).each do |i|
        result[i] = []
    end
    result
        

end

p find_lowest_cost([1,3,1,5], 'HEALTH', 'HANDS');
