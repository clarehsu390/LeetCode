# Definition for singly-linked list.
# class ListNode
#     attr_accessor :val, :next
#     def initialize(val)
#         @val = val
#         @next = nil
#     end
# end

# @param {ListNode} head
# @param {Integer} val
# @return {ListNode}

def remove_elements(head, val)
    #iterate through list
    #reset pointers for target_node.prev = target_node.next
    current_node = head
    while current_node.next
        if current_node.next == val
            current_node.next = current_node.next.next #reset pointers
        end
        current_node = current_node.next
    end
    head

end