# Construct Binary Search Tree from Preorder Traversal

From: [Leetcode](https://leetcode.com/problems/construct-binary-search-tree-from-preorder-traversal/)

## Description

Return the root node of a binary **search** tree that matches the given `preorder` traversal.

*(Recall that a binary search tree is a binary tree where for every node, any descendant of `node.left` has a value `< node.val`, and any descendant of node.right has a value `> node.val`.  Also recall that a preorder traversal displays the value of the `node` first, then traverses `node.left`, then traverses `node.right`.)*

**Example 1:**

```
Input: [8,5,1,7,10,12]
Output: [8,5,10,1,7,null,12]
```
 
**Note: **

1. `1 <= preorder.length <= 100`
2. The values of `preorder` are distinct.

# Solution

This gave me a lot of trouble, and admittedly after going down the wrong path (building a queue of left/right elements and iterating) I checked some solutions.

Ultimately, my approach would've worked, but I had several issues:

1. I hadn't read the question correctly. I started down the route of building a set of queues when I could've supplied the input values as-is, as I was building a bog-standard BST. I think the null threw me off.

2. My method of iterating was incorrect. I tried to iterate inside the resursive method, and this caused numerous issues. Iterating outside of recursion helped tremendously.

The solution itself is really straightforward, once you know what to do. I look through each value in the input, and feed it to the `bst` method.

Using this method, the root stays where it is, and the value changes each time. The method runs a simple check to see which side of the tree the value should be on. If there isn't a value at left or right, it creates it and ends the call. If there is, it makes a recursive call down the tree until it can be added.

Again, once I figured out I was building a BST, and that I didn't need to do anything fancy to get the null/nil in the output, the solution seemed pretty easy. I'd like to give this question another try sometime.