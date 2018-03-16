def has_path_sum(root, sum)
    return false if root.nil?
    return true if root.val == sum && root.left.nil? && root.right.nil?
    right_sum = sum - root.right.val
    left_sum = sum - root.left.val
    has_path_sum(root.left, left_sum) || has_path_sumr(root.right, right_sum)
end

