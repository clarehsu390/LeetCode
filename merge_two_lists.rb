# Definition for singly-linked list.
# class ListNode
#     attr_accessor :val, :next
#     def initialize(val)
#         @val = val
#         @next = nil
#     end
# end

# @param {ListNode} l1
# @param {ListNode} l2
# @return {ListNode}
def merge_two_lists(l1, l2)
    fakehead = ListNode.new(nil)
    fakehead.next = l1
    current = fakehead
    
    while current
        current.next = l2 if current.next.nil?
        current = current.next
    end
    l1
end