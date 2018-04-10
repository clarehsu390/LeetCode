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
    attr_accessor :head, :tail
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
    self
   end

   def count
        temp = self.head
        @length = 0
        while temp
            length += 1
            temp = temp.next
        end
        length
    end

    def rec_count
        temp = self.head
       if temp.next = @tail
        return 0
       else
        return 1 + temp.next.rec_count
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

list = LinkedList.new
p list.append(1,1)
p list
p list.count