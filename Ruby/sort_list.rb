class Node
    attr_accessor :value, :next
    def initialize(value)
        @value = value
        @next = nil
    end
end

def sort_list(head)
  return head if head.nil? || head.next.nil?

  middle = find_middle(head)
  next_middle = middle.next
  middle.next = nil
  left = sort_list(head)
  right = sort_list(next_middle)
  merge(left, right)
end

def merge(node1, node2)
    return node2 if node1.nil?
    return node1 if node2.nil?
    result = nil
    if (node1.val <= node2.val)
        result = node1
        result.next = merge(node1.next, node2)
    else 
        result = node2
        result.next = merge(node1, node2.next)
    end
    result


end

def find_middle(node)
    return node if node.nil?
    fast = node.next
    slow = node

    while fast
        fast = fast.next
        if fast
            slow = slow.next
            fast = fast.next
        end
    end
    slow
end

