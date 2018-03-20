def max_depth(root)
    return 0 if root.nil?
    #keep traversing until we reach the last leaf
    left_depth = max_depth(root.left) 
    right_depth = max_depth(root.right)
    left_depth > right_depth ? left_depth + 1 : right_depth + 1 #include the current leaf we're on
end