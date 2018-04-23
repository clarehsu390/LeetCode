class ListNode
    attr_accessor :val, :next
    def initialize(val)
        @val = val
        @next = nil
    end
end

def rotate_right(head, k)
    counter = 1
    current_node = head
    while current_node.next
        current_node = current_node.next
        counter += 1
    end
    current_node.next = head
    k = counter - k % counter

    while k > 0
        current_node = current_node.next
        k -= 1
    end
    head = current_node.next
    current_node.next = nil
    return head

        
end