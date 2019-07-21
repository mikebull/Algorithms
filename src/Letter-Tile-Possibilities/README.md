# Letter Tile Possibilities

From: [Leetcode](https://leetcode.com/problems/letter-tile-possibilities/)

## Description

You have a set of `tiles`, where each tile has one letter `tiles[i]` printed on it.  Return the number of possible non-empty sequences of letters you can make.

 

**Example 1:**

```
Input: "AAB"
Output: 8
Explanation: The possible sequences are "A", "B", "AA", "AB", "BA", "AAB", "ABA", "BAA".
```

**Example 2:**

```
Input: "AAABBC"
Output: 188
```

**Note:**

1. `1 <= tiles.length <= 7`
2. `tiles` consists of uppercase English letters.

## Solution

I had to look up the solution for this one, and although I assumed there might be a DFS solution here I wasn't aware of the ideal way to implement this.

Many of the recommended approaches involved backtracking, but I found this one to be quite elegant, so I attempted to port what I had saw to Ruby, and picked up a handy trick with Ranges in Ruby - if you want to omit the final value from a range, use a triple dot `...` instead of a `..`. This is a mistake I've made a lot when working with Ruby, but wasn't sure why until now.

Either way, the solution itself is to recursively build up a a set of `possibilities`. Once in the recursive method, continue if characters aren't in the set, and loop through each character. Within the loop, recurse through the stack by building:

1. A concatenated result of the current character and one from the loop. 
2. A collection of the `remaining_tiles` - all tiles with the current tile removed.

This allows each recursive call to not get the same results all the time, and to improve the speed.

The key part of this is the initial state. The first character passed in to the `current` parameter is an empty string. This is why when returning the count, we subtract by one.