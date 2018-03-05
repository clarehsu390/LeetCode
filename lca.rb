def lca(tree_node, node1, node2)
    smaller = node1.value < node2.value ? node1.value : node2.value
    bigger = node1.value > node2.value ? node1.value : node2.value

    if tree_node.value >= smaller && tree_node.value <= bigger
        lca = tree_node
    elsif tree_node.value > smaller && tree_node.value > bigger
        lca = lca(tree_node.left, node1, node2)
    elsif tree_node.value < smaller && tree_node.value < bigger
        lca = lca(tree_node.right, node, node2)
    end
    lca
end