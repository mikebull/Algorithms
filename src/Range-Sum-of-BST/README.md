# Range Sum of BST

From: [Leetcode](https://leetcode.com/problems/range-sum-of-bst/)

## Description

Given the root node of a binary search tree, return the sum of values of all nodes with value between `L` and `R` (inclusive).

The binary search tree is guaranteed to have unique values.

**Example 1:**

```
Input: root = [10,5,15,3,7,null,18], L = 7, R = 15
Output: 32
```

**Example 2:**

```
Input: root = [10,5,15,3,7,13,18,1,null,6], L = 6, R = 10
Output: 23
```

**Note:**

1. The number of nodes in the tree is at most 10000.
2. The final answer is guaranteed to be less than 2^31.

## Solution

This is a straightforward solution with both an iterative and recursive solution. One of the few times where I've been able to have a working solution in my first try.

A stack is used to traverse the tree, with each left and right node added to the stack inside a while loop that runs until the stack is empty.