# Valid Palindrome

From: [LeetCode](https://leetcode.com/problems/valid-palindrome/)

## Description

Given a string, determine if it is a palindrome, considering only alphanumeric characters and ignoring cases.

**Note:** For the purpose of this problem, we define empty string as valid palindrome.

**Example 1:**

```
Input: "A man, a plan, a canal: Panama"
Output: true
```

**Example 2:**

```
Input: "race a car"
Output: false
```

## Solution

This is a really easy one, with one minor gotcha that initially caught me out - the punctuation. I used a nice pattern-matching solution I found on Stack Overflow, but this is something I'd like to memorise since this seems like it'll be a common problem that should have an easy solution.

The solutino is pretty straightforward. Create a recursive function with two pointers - `start` and `finish` at each end of the string. If the start and finish characters are the same, recurse through with `start` incremented and `finish` decremented, until `start` is greater than or equal to `finish.

To cut out punctuation, recurse with whichever pointer has the non-alphanumeric character incremented/decremented.