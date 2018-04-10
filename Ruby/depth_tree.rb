#base case: return 0 if root is nil
#inductive case: recursively traverse left and right
#check if left or right is larger
def find_height(root)
  return 0 if root.nil?
  left = find_height(root.left)
  right = find_height(root.right)
  left > right ? left + 1 : right + 1
end
