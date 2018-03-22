class TrieNode
    attr_accessor :children, :char, :is_word
    def initialize(char)
        @char = char
        @is_word = false
        @children = {}
    end

    def add_child(node)
        @children[node.char] = node
    end
end

class Trie
    def initialize
        @root = TrieNode.new('')
    end

    def add(word)
        current_node = @root
        (0..word.length - 1).each do |index|
            ch = word[index]
            if current_node.children[ch]
                current_node = current_node.children[ch]
            else
                new_node = TrieNode.new(ch)
                current_node.add_child(new_node)
                current_node = new_node
            end
        end
        current_node.is_word = true
    end

    def contains(word)
       current_node = @root
       (0..word.length - 1).each do |index|
            ch = word[index]
            if current_node.children[ch]
                current_node = current_node.children[ch]
            else
                return false
            end
        end
        return current_node.is_word
    end
end