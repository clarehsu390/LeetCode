class TreeNode
    attr_accessor :val, :left, :right
    def initialize(val)
        @val = val
        @left, @right = nil, nil
    end
end

def min_depth(root)
    return 0 if root.nil?
    left = min_depth(root.left)
    right = min_depth(root.right)
    if root.left.nil?
        return right + 1
    elsif root.right.nil?
        return left + 1
    end
    [left, right].min + 1
end