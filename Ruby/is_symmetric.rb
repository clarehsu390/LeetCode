def is_symmetric(root)
    return true if root.nil?
    return is_mirror(root.left, root.right)
    
end

def is_mirror(left, right)
    return true if left.nil? && right.nil?
    return false if left.nil? || right.nil? || left.val != right.val
    
    return is_mirror(left.left, right.right) && is_mirror(left.right, right.left)
end