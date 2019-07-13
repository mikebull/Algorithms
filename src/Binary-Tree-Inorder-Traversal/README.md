# Binary Tree Inorder Traversal

From: [LeetCode](https://leetcode.com/problems/binary-tree-inorder-traversal/)

## Description

Given a binary tree, return the inorder traversal of its nodes' values.

**Example:**

```
Input: [1,null,2,3]
   1
    \
     2
    /
   3

Output: [1,3,2]
```

**Follow up:** Recursive solution is trivial, could you do it iteratively?

## Solution 1

This one is easy, as long as you remember the following rules.

1. Inorder is Left, Root, Right
2. When doing this recursively, do a null check at the start to check if root is null. There's no need to be fancy and try to do them in the recursive calls.

From here, it's as easy as passing a result array into a recursive method, traversing, and adding the root to your array.

## Solution 2

This one really confused me, because of how the output felt like a queue, despite recursion being on a stack. I had to look up an iterative inorder traversal to piece this one together.

The answer was to break the problem down as follows:

1. Use a stack to manage position in the tree, and a queue to manage output
2. Loop through while root is not null OR the stack is not empty
3. Inside the loop, add all lefts to the stack until root is null.
4. From here, pop the last left off the stack and put onto the queue.
5. Set root to the right node, and loop around again. Assuming the right isn't null, it'll be added to the stack on the first loop.

This feels like a good technique to memorise and practice.