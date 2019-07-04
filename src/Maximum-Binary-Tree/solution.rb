# Definition for a binary tree node.
# class TreeNode
#     attr_accessor :val, :left, :right
#     def initialize(val)
#         @val = val
#         @left, @right = nil, nil
#     end
# end

# @param {Integer[]} nums
# @return {TreeNode}
def construct_maximum_binary_tree(nums)
    mbt(nums, 0, nums.length - 1)    
end

def mbt(nums, start, finish)
    return nil if start > finish
    
    max_value = nums[start..finish].max    
    root_index = nums.index(max_value)
    
    root = TreeNode.new(max_value)    
    root.left = mbt(nums, start, root_index - 1)
    root.right = mbt(nums, root_index + 1, finish)
    
    root
end