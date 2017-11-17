class Node
    attr_accessor :key, :val, :next

    def initialize(key = nil, val = nil)
        @key = key
        @val = val
        @next = nil
    end
end

class LinkedList
    include Enumerable

    def initialize
        @head = Node.new
        @tail = Node.new
        @head.next = @tail
    end

   def append(key, val)
    new_node = Node.new(key, val)
    self.each do |node|
        if node.next == @tail
            node.next = new_node
            new_node.next = @tail
        end
    end
    
   end

   def each
    current_node = @head.next
        until current_node == @tail
            yield current_node
            current_node = current_node.next
        end
    end
end