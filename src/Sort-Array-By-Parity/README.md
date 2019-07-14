# Sort Array By Parity

From: [LeetCode](https://leetcode.com/problems/sort-array-by-parity/)

## Description

Given an array `A` of non-negative integers, return an array consisting of all the even elements of `A`, followed by all the odd elements of `A`.

You may return any answer array that satisfies this condition.

**Example 1:**

```
Input: [3,1,2,4]
Output: [2,4,3,1]
The outputs [4,2,3,1], [2,4,1,3], and [4,2,1,3] would also be accepted.
```

**Note:**

1. `1 <= A.length <= 5000`
2. `0 <= A[i] <= 5000`

## Solution

Sorting was an option, but the two-pointer approach seemed a perfect fit for this, and I managed to do this fairly quickly and easily.

Set up two pointers, one at the start and one at the end, and increment/decrement until you find two that aren't in the right place. Once `left` and `right` are in position, swap them, and continue until you reach the middle.

I made some minor mistakes in ensuring that `left <= right` inside the loop, alongside initial checks for empty arrays or arrays with a single element, but this was pretty easy.