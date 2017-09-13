def remove_nth_from_end(head, n)
   fakehead = ListNode.new(nil)
    fakehead.next = head
    current = fakehead
    count = 0

    while current.next
        current = current.next
        count += 1
    end
    nth_index = count - n
    p nth_index
    current = fakehead
    new_count = 0
    while current.next
        

        if new_count == nth_index
            current.next = current.next.next
        else
        current = current.next
        end
        new_count += 1
    end

    fakehead.next
    

    


end

