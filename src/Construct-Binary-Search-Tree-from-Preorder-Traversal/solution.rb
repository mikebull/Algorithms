# Definition for a binary tree node.
# class TreeNode
#     attr_accessor :val, :left, :right
#     def initialize(val)
#         @val = val
#         @left, @right = nil, nil
#     end
# end

# @param {Integer[]} preorder
# @return {TreeNode}
def bst_from_preorder(preorder)
    root = TreeNode.new(preorder.first)
    
    preorder[1..preorder.length].each { |val| bst(root, val) }
    
    root
end

def bst(root, val)
    if root.val > val
        if root.left.nil?
            root.left = TreeNode.new(val)
        else
            bst(root.left, val)
        end
    else
        if root.right.nil?
            root.right = TreeNode.new(val)
        else
            bst(root.right, val)
        end
    end
end