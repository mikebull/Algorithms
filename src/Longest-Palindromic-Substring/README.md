# Longest Palindromic Substring

## Description

Given a string s, find the longest palindromic substring in s. You may assume that the maximum length of s is 1000.

**Example 1:**

```
Input: "babad"
Output: "bab"
Note: "aba" is also a valid answer.
```

**Example 2:**

```
Input: "cbbd"
Output: "bb"
```

## Solution

The solution is quite tricky, due to the odd/even lengths, so it's worth running through on paper first to see if this solution is correct.

First, we loop through the entire string (with an additional loop to set `j`), and we check to see if the left and right characters match. If we have an odd length, they'll be the same char.

If they do, we decrement the left pointer and update the right until left can go no further than `-1`. We calculate the sum by subtracting the larger number right with the smaller number left, and removing one (as left is probably `-1`?).

From here, we set max_substring to be the range of left to right.