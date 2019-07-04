# Definition for a binary tree node.
# class TreeNode
#     attr_accessor :val, :left, :right
#     def initialize(val)
#         @val = val
#         @left, @right = nil, nil
#     end
# end

# @param {TreeNode} root
# @param {Integer} val
# @return {TreeNode}
def insert_into_bst(root, val)
    return TreeNode.new(val) if root.nil?
    
    if val > root.val
        root.right = insert_into_bst(root.right, val)
    else
        root.left = insert_into_bst(root.left, val)
    end
    
    root
end