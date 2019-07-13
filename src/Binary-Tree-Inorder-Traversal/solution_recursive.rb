# Definition for a binary tree node.
# class TreeNode
#     attr_accessor :val, :left, :right
#     def initialize(val)
#         @val = val
#         @left, @right = nil, nil
#     end
# end

# @param {TreeNode} root
# @return {Integer[]}
def inorder_traversal(root)
    result = []
    traverse(root, result)
    
    result
end

def traverse(root, result)
    return if root.nil?
    
    traverse(root.left, result)
    
    result.push(root.val)
    
    traverse(root.right, result)
end