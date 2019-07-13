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
    stack = []
    
    queue = []
    
    while !root.nil? || !stack.empty?        
        while !root.nil?
            stack.push(root)
            root = root.left
        end
        
        root = stack.pop
        
        queue.push(root.val)
        
        root = root.right
    end
    
    queue
end