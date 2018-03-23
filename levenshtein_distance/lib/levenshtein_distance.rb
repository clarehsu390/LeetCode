OPERATIONS = [
    "add",
    "delete",
    "change",
    "anagram"
]

require_relative 'trie.rb'

class LevenshteinDistance
    attr_accessor :word1, :word2, :costs, :trie, :intermediate, :lowest_cost, :solutions_table, :cache
    def initialize(costs, word1, word2)
        @word1 = word1
        @word2 = word2
        @costs = costs
        @lowest_cost = 0
        @intermediate = ""
        @cache = []
        @trie = Trie.new()
        @dictionary_file = File.readlines('words.txt').map {|word| dictionary(word.strip)}
    end

    def find_lowest_cost(word, target)
        return costs[-1] if @word1.chars.sort == @word2.chars.sort
        return lowest_cost if @cache[-1] == @word2
        return -1 if @intermediate.nil?
        if word.length > @word2.length
           @cache << delete_letter(word)
        elsif word.length < @word2.length
             @cache << add_letter(word)
        else
            @cache << swap_letter(word)
        end
        p lowest_cost
        find_lowest_cost(intermediate, word2)
    end

    def dictionary(data)
        @trie.add(data)
    end

    def delete_letter(word)
        word_list = []
        word.each_char.with_index do |ch, i|
            modified = word[0...i] + word[i+1..-1]
            word_list << modified if @trie.contains(modified) && !cache.include?(modified)
        end
        @lowest_cost += costs[1]
        @intermediate = word_list[0]
    end

    def add_letter(word)
        word_list = []
        alphabet = ('a'..'z').to_a
        alphabet.each do |ch|
            word.each_char.with_index do |char, i|
                modified = word[0..i] + ch + word[i+1..-1]
                word_list << modified if @trie.contains(modified) && !cache.include?(modified)
            end
            end
        @lowest_cost += costs[0]
        @intermediate = word_list.include?(@word2) ? word2 : word_list[0]
    end

    def swap_letter(word)
        word_list = []
        alphabet = ('a'..'z').to_a
        word.each_char.with_index do |char, i|
            alphabet.each do |ch|
                modified = word[0...i] + ch + word[i+1..-1]
                word_list << modified if @trie.contains(modified) && modified != word && !cache.include?(modified)
            end
            end
        @lowest_cost += costs[2]
        hash = Hash.new(0)
        word_list.each do |word|
            word.each_char do |ch|
            hash[word] += 1 if word2.chars.include?(ch)
            end
        end
         new_hash = hash.select {|k,v| k[0] == @word2[0]}
         @intermediate = new_hash.max_by {|k,v| v}[0]

    end
end






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
