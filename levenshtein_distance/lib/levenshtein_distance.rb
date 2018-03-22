OPERATIONS = [
    "add",
    "delete",
    "change",
    "anagram"
]

require_relative 'trie.rb'

class LevenshteinDistance
    attr_accessor :word1, :word2, :costs, :trie, :intermediate
    def initialize(costs, word1, word2)
        @word1 = word1
        @word2 = word2
        @costs = costs
        @intermediate = ""
        @trie = Trie.new()
        @dictionary_file = File.readlines('words.txt').map {|word| dictionary(word.strip)}
    end

    def dictionary(data)
        @trie.add(data)
    end

    def delete_letter(word)
        word_list = []
        word.each_char.with_index do |ch, i|
            modified = word[0...i] + word[i+1..-1]
            word_list << modified if @trie.contains(modified)
        end
        word_list[0]
    end



end


# def find_lowest_cost(costs, word1, word2)
#     return costs[-1] if word1.chars.sort === word2.chars.sort
    
# end

# def delete_letter(word)
#     word_list = []
#     word.each_char.with_index do |ch, i|
#         word_list << word.delete_at(i)
#     end
# end






# def solutions_table(word1, word2, costs)
#     raise 'Enter valid inputs' unless word1.is_a?(String) && word2.is_a?(String)
#     length1 = word1.length
#     length2 = word2.length
#     return length1 if length2 == 0
#     return length2 if length1 == 0
#     result = Array.new(length1+1) {Array.new(length2+1)}
#     (0..length1).each {|i| result[i][0] = i} #intialize first row to 0..length1
#     (0..length2).each {|j| result[0][j] = j} #initialize first column to 0..length2
#     (1..length2).each do |j| #examine each ch of word1 from 1..length1
#         (1..length1).each do |i| #examine each ch of word2 from 1..length2
#             if word1[i-1] == word2[j-1]
#                 result[i][j] = result[i-1][j-1] #free
#             else
#                 result[i][j] = [
#                     result[i-1][j] + costs[0],
#                     result[i][j-1] + costs[1],
#                     result[i-1][j-1] + costs[2],
#                     # costs[3]
#             ].min
#         end
#     end
# end
# result[length1][length2] > length1 ? -1 : result[length1][length2]

# end

# p find_lowest_cost([1,3,1,5], 'HEALTH', 'HANDS')
# p find_lowest_cost([1,9,1,3], 'TEAM', 'MATE')
# p find_lowest_cost([7,1,5,2], 'OPHTHALMOLOGY', 'GLASSES')
