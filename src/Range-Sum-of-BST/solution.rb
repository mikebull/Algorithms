# Definition for a binary tree node.
# class TreeNode
#     attr_accessor :val, :left, :right
#     def initialize(val)
#         @val = val
#         @left, @right = nil, nil
#     end
# end

# @param {TreeNode} root
# @param {Integer} l
# @param {Integer} r
# @return {Integer}
def range_sum_bst(root, l, r)
    stack = []
    
    sum = 0
    
    stack.push(root)
    
    while !stack.empty?
        root = stack.pop
        
        sum += root.val if root.val >= l && root.val <= r
        
        stack.push(root.left) unless root.left.nil?
        stack.push(root.right) unless root.right.nil?
    end
    
    sum
end