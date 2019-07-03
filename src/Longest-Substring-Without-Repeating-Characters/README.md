# Longest Substring Without Repeating Characters

From: [Leetcode](https://leetcode.com/problems/longest-substring-without-repeating-characters/)


## Description

Given a string, find the length of the longest substring without repeating characters.

**Example 1:**

```
Input: "abcabcbb"
Output: 3 
Explanation: The answer is "abc", with the length of 3. 
```

**Example 2:**
```
Input: "bbbbb"
Output: 1
Explanation: The answer is "b", with the length of 1.
```

**Example 3:**
```
Input: "pwwkew"
Output: 3
Explanation: The answer is "wke", with the length of 3. 
             Note that the answer must be a substring, "pwke" is a subsequence and not a substring.
```

## Solution

[Link to solution](./solution.rb)

The necessary requirements for this problem are as follows:

1. A hash to store the position where a character was spotted
2. A `pointer_to_last_appearance` variable to store the location of the last non-unique character
3. A `max` variable to store the maximum length of the (currently) unique string

If a character is unique, its current index should be stored with its character as the key. The key calculation is the `pointer_to_last_appearance`, as this starts when the first duplicate has been found, and stores how far away you are from each discovered character. For example, in the string `"abcabdbb"`, once you reach the second a at index 3, `pointer_to_last_appearance` becomes the max value between its initial location plus one (0+1=1) and its `pointer_to_last_appearance` (0), setting `pointer_to_last_appearance` to 1.

Once you work through the code, the `max` is the maximum value between the existing maximum, and the index minus the current pointer.
