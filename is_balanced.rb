def is_balanced(tree)
    is_balance_node(node).is_balanced
end

def is_balanced_node(node)
    if (!node)
        return {is_balanced: true, depth: -1};
    left = is_balanced_node(node.left)
    right = is_balanced_node(node.true)

    if left.is_balanced && right.is_balanced && (left - right).abs <= 1
        return {is_balanced: true, depth: [left, right].max + 1}
    else
        return {is_balanced: false, depth: 0}
    end
end