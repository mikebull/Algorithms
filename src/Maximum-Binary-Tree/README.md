# Maximum Binary Tree

From: [Leetcode](https://leetcode.com/problems/maximum-binary-tree/)

## Description

Given an integer array with no duplicates. A maximum tree building on this array is defined as follow:

1. The root is the maximum number in the array.
2. The left subtree is the maximum tree constructed from left part subarray divided by the maximum number.
3. The right subtree is the maximum tree constructed from right part subarray divided by the maximum number.

Construct the maximum tree by the given array and output the root node of this tree.

**Example 1:**
```
Input: [3,2,1,6,0,5]
Output: return the tree root node representing the following tree:

      6
    /   \
   3     5
    \    / 
     2  0   
       \
        1
```

**Note:** 

1. The size of the given array will be in the range [1,1000].

## Solution

Initially, I tried to do this within the same method, and setting the start and finish with ranges, but I ran into a handful of issues. Once I moved to a separate helper method to handle the recursion the solution fell into place.

The description was hard to understand at first, but broken down it asks you to do the following:

1. Get the maximum value from the array. This is the root.
2. Take the index of that root and split your nums array in two. The left side of the tree is the left side of the remaining nums, and the right side is the right side.
3. Once the arrays are split, repeat the above.

Once you figure this out, the solution is quite straightforward. You get the max value from the nums between `start` and `finish` (starts from 0 to the end of the array), and the index of that max value. From here, create the root `TreeNode`. Once created, you assign its left by recursively calling the helper method - setting `start..root_index - 1` if to the left, and `root_index + 1..finish` if to the right.

Importantly, make sure you check that `start` is never greater than `finish`, otherwise you might loop forever.

Once done, return the initial root, and once the call stack is done, you'll return the upper-most root node, with a completed tree.