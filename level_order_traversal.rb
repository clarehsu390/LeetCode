def level_order_traversal(root)
    result = []
    node_values = []
   _current = []
    _next = []
    _current << root
    return result if root.nil?
    while !_current.empty?
        current_node = _current.shift
        
        _next << current_node.left if current_node.left
        _next << current_node.right if current_node.right
        node_values << current_node.val
        if _current.empty?
            _current = _next
            _next = []
            result << node_values
            node_values = []
        end
    end
    result
end