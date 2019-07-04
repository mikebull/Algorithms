# Insert into a Binary Search Tree

From: [Leetcode](https://leetcode.com/problems/insert-into-a-binary-search-tree/)

## Description

Given the root node of a binary search tree (BST) and a value to be inserted into the tree, insert the value into the BST. Return the root node of the BST after the insertion. It is guaranteed that the new value does not exist in the original BST.

Note that there may exist multiple valid ways for the insertion, as long as the tree remains a BST after insertion. You can return any of them.

For example, 

```
Given the tree:
        4
       / \
      2   7
     / \
    1   3
And the value to insert: 5
```

You can return this binary search tree:

```
         4
       /   \
      2     7
     / \   /
    1   3 5
```

This tree is also valid:

```
         5
       /   \
      2     7
     / \   
    1   3
         \
          4
```

## Solution

This one is really easy, and I've got no idea why it's considered a medium. If I can do this in five minutes, I'm sure you'll have no trouble! Admittedly, I tidied my solution up a bit before I came to this one, but it's still easier than it's difficulty suggests.

As a general rule, always run a null check at the start. This is good practice. In this case, we return a new `TreeNode` with `val` assigned if `root` is nil.

From here, we can recursively walk through the tree until we hit the point where `root` is nil.

We eventually end up at the bottom after traversing the tree, and we return the upper-most root.