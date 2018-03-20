OPERATIONS = [
    "add",
    "delete",
    "change",
    "anagram"
]
def find_lowest_cost(costs, word1, word2)
    # costs_hash = {}
    # (0..3).each do |i|
    #     operation = OPERATIONS[i]
    #     costs_hash[operation] = costs[i]
    # end
    raise 'Enter valid inputs' unless word1.is_a?(String) && word2.is_a?(String)
    length1 = word1.length
    length2 = word2.length
    return length1 if length2 == 0
    return length2 if length1 == 0
    result = Array.new(length1+1) {Array.new(length2+1)}
    (0..length1).each {|i| result[i][0] = i} #intialize first row to 0..length1
    (0..length2).each {|j| result[0][j] = j} #initialize first column to 0..length2
    (1..length2).each do |j| #examine each ch of word1 from 1..length1
        (1..length1).each do |i| #examine each ch of word2 from 1..length2
            if word1[i-1] == word2[j-1]
                result[i][j] = result[i-1][j-1] #free
            else
                result[i][j] = [
                    result[i-1][j] + costs[0],
                    result[i][j-1] + costs[1],
                    result[i-1][j-1] + costs[2],
                    # costs[3]
            ].min
        end
    end
end
p result
result[length1][length2] > length1 ? -1 : result[length1][length2]


   
        

end

p find_lowest_cost([1,3,1,5], 'HEALTH', 'HANDS')
# p find_lowest_cost([1,9,1,3], 'TEAM', 'MATE')
# p find_lowest_cost([7,1,5,2], 'OPHTHALMOLOGY', 'GLASSES')
