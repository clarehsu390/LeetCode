class Node
    attr_accessor :val
    def intialize(val)
        @val = val
        @next = nil
    end
end

class LinkedList
    def initialize
        @head = nil
    end

    def has_cycle?(head)
        current_node = head.next
        seen_nodes = {}
        while current_node
            if seen_nodes[current_node.val]
                return true
            else
                seen_nodes[current_node.val]
            end
            current_node = current_node.next
        end
    end

        
end