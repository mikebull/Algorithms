# Defanging an IP Address

From: [Leetcode](https://leetcode.com/problems/defanging-an-ip-address/)

## Description

Given a valid (IPv4) IP `address`, return a defanged version of that IP address.

A defanged IP address replaces every period `"."` with `"[.]"`.

**Example 1:**

```
**Input:** address = "1.1.1.1"
**Output:** "1[.]1[.]1[.]1"
```

**Example 2:**

```
**Input:** address = "255.100.50.0"
**Output:** "255[.]100[.]50[.]0"
```

**Constraints:**

The given `address` is a valid IPv4 address.

## Solution

This almost felt "too" easy - loop through the string and replace every `"."` with `"[.]"`, right?

Wrong, because you're modifying the length of your loop, and you're just going to keep growing that loop until you have a really nested full stop.

Either way, it's a straightforward problem, and I wanted to do it without building a new string, so I decided to use a while loop and to manage the increment of the index myself, and to little surprise it worked first time.