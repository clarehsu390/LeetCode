def level_order_traversal(root)
    result = []
    node_values = [] #values of each node
   _current = [] #use two queues to keep track of when each level starts
    _next = []
    _current << root
    return result if root.nil?
    while !_current.empty?
        current_node = _current.shift #remove first element from current level
        
        _next << current_node.left if current_node.left
        _next << current_node.right if current_node.right
        node_values << current_node.val #keep track of the values
        if _current.empty? #if current level is empty
            _current = _next #current level = next level
            _next = [] #reset next level
            result << node_values #push nodes from this level to result
            node_values = [] #reset node_values for next level
        end
    end
    result
end