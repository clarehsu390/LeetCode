def max_depth(root)
    return 0 if root.nil?
    left_depth = max_depth(root.left)
    right_depth = max_depth(root.right)
    left_depth > right_depth ? left_depth + 1 : right_depth + 1
end