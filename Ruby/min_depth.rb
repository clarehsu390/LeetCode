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
    if root.left.nil? #if left does not exist
        return right + 1
    elsif root.right.nil? #if right does not exist
        return left + 1
    end
    [left, right].min + 1 #check left and right
end