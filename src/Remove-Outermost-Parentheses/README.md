# Remove Outermost Parentheses

From: [Leetcode](https://leetcode.com/problems/remove-outermost-parentheses/)

## Description

A valid parentheses string is either empty `("")`, `"(" + A + ")"`, or `A + B`, where `A` and `B` are valid parentheses strings, and + represents string concatenation.  For example, `""`, `"()"`, `"(())()"`, and `"(()(()))"` are all valid parentheses strings.

A valid parentheses string `S` is **primitive** if it is nonempty, and there does not exist a way to split it into `S = A+B`, with `A` and `B` nonempty valid parentheses strings.

Given a valid parentheses string `S`, consider its primitive decomposition: `S = P_1 + P_2 + ... + P_k`, where `P_i` are primitive valid parentheses strings.

Return `S` after removing the outermost parentheses of every primitive string in the primitive decomposition of `S`.

 

**Example 1:**

```
Input: "(()())(())"
Output: "()()()"
Explanation: 
The input string is "(()())(())", with primitive decomposition "(()())" + "(())".
After removing outer parentheses of each part, this is "()()" + "()" = "()()()".
```

**Example 2:**

```
Input: "(()())(())(()(()))"
Output: "()()()()(())"
Explanation: 
The input string is "(()())(())(()(()))", with primitive decomposition "(()())" + "(())" + "(()(()))".
After removing outer parentheses of each part, this is "()()" + "()" + "()(())" = "()()()()(())".
```

**Example 3:**

```
Input: "()()"
Output: ""
Explanation: 
The input string is "()()", with primitive decomposition "()" + "()".
After removing outer parentheses of each part, this is "" + "" = "".
```

**Note:**

1. `S.length <= 10000`
2. `S[i]` is `"("` or `")"`
3. `S` is a valid parentheses string

## Solution

This is an easy problem, but it took me a little while to figure out how `open_parentheses` should be set. I'd like to give this problem another try in the future to see if I do better.

The tricky part is in the problem title - we need to remove the outer parentheses, and if we count these open characters we notice a pattern.

In order to remove the outer character, I want to remove the second instance of an open character, so I need to check if `open_parentheses` is greater than zero. Since the string is deemed valid, the `open_parentheses` count against the close character should check to see if it's greater than one.

Once this tricky aspect is figured out, the rest is straightforward: If you see a `(`, increment. If you see a ')', decrement.

The easiest solution I could find was to add each valid character to a new string and to return that. I can think of a few ways to do this in-place if memory is an issue, but they all involve an additional loop and keeping track of pointers.