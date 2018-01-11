def in_order_traversal(root)
  return [] if root.nil?
  result = []
  result.concat(in_order_traversal(root.left))
  result << root.val
  result.concat(in_order_traversal(root.right))
  result
end
