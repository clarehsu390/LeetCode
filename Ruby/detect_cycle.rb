class Node
    attr_accessor :val
    def intialize(val)
        @val = val
        @next = nil
    end
end

def detect_cycle(node) #O(n) space, O(n) time
    seen_nodes = {}
    while node.next
        if seen_nodes[node.val]
            return node
        else
            seen_nodes[node.val] = true
        end
    end
    null
end

def detect_cycle2(node)
    fast_node = node.next.next
    slow_node = node
    while fast_node.next && fast
        if fast_node == slow_node
            return true
        end
        slow_node = slow_node.next
        fast_node = fast_node.next.next
    end
   null
end