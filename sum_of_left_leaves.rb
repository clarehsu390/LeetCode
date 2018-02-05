def sum_of_left_leaves(root)
    return 0 if root.nil?
    return sum_of_left_leaves(root.right) if root.left.nil?
    return sum_of_left_leaves(root.right) + sum_of_left_leaves(root.left) if root.left.left || root.right.left
    return sum_of_left_leaves(root.right) + root.left.val
end