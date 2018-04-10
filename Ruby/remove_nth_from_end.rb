def remove_nth_from_end(head, n)
   fast = head
   slow = head
    
    while n > 0
        fast = fast.next
        n -= 1
        return head.next unless fast 
    end

    while fast.next
        fast = fast.next
        slow = slow.next
    end
    slow.next = slow.next.next
    head
    


end

