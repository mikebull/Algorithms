# Increasing Triplet Subsequence

From: Leetcode

## Description

Given an unsorted array return whether an increasing subsequence of length 3 exists or not in the array.

Formally the function should:

> Return true if there exists i, j, k such that arr[i] < arr[j] < arr[k] given 0 ≤ i < j < k ≤ n-1 else return false.

**Note:** Your algorithm should run in O(n) time complexity and O(1) space complexity.

**Example 1:**

```
Input: [1,2,3,4,5]
Output: true
Example 2:
```

```
Input: [5,4,3,2,1]
Output: false
```

## Solution

There exists an easy solution. As we are looking for a increasing subsequence of three, we can deduce that setting two variables to find the first two steps will allow us to check if the output should be true.

By settings a `big` and `small` variable to the maximum integer size, we can set the smallest number, then set the next biggest number. If the next number is larger than both `small` and `big`, we can return true.

If not, then both the `small` and `big` variables will be continually hit until the loop ends, and we return false.