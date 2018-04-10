def in_order_traversal(root)
  return [] if root.nil?
  result = []
  result.concat(in_order_traversal(root.left))
  result << root.val
  result.concat(in_order_traversal(root.right))
  result
end

def iterative_iot(root)
  #declare a queue
  arr = []
  stack = Queue.new
  current_node = root
  while (!current_node.nil? || !stack.empty?)
    while !current_node.nil?
      stack << current_node
      current_node = root.left
    end
    current_node = stack.pop
    arr << current_node.val
    current_node = current_node.right
  end
  arr

end

def pre_order_traversal(root)
  return [] if root.nil?
  result = []
  result << root.val
  result.concat(pre_order_traversal(root.left))
  result.concat(pre_order_traversal(root.right))
  result
end