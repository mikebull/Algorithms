# Most Common Word

From: [Leetcode](https://leetcode.com/problems/most-common-word/)

## Description

Given a paragraph and a list of banned words, return the most frequent word that is not in the list of banned words.  It is guaranteed there is at least one word that isn't banned, and that the answer is unique.

Words in the list of banned words are given in lowercase, and free of punctuation.  Words in the paragraph are not case sensitive.  The answer is in lowercase.

 
**Example:**

```
Input: 
paragraph = "Bob hit a ball, the hit BALL flew far after it was hit."
banned = ["hit"]
Output: "ball"
Explanation: 
"hit" occurs 3 times, but it is a banned word.
"ball" occurs twice (and no other word does), so it is the most frequent non-banned word in the paragraph. 
Note that words in the paragraph are not case sensitive,
that punctuation is ignored (even if adjacent to words, such as "ball,"), 
and that "hit" isn't the answer even though it occurs more because it is banned.
```

**Note:***

* `1 <= paragraph.length <= 1000.`
* `0 <= banned.length <= 100.`
* `1 <= banned[i].length <= 10.`
* The answer is unique, and written in lowercase (even if its occurrences in paragraph may have uppercase symbols, and even if it is a proper noun.)
* `paragraph` only consists of letters, spaces, or the punctuation symbols `!?',;.`
* There are no hyphens or hyphenated words.
* Words only consist of letters, never apostrophes or other punctuation symbols.


## Solution

This was really easy, and took less than five minutes to do, with a catch. I had to create a `clean_paragraph` method to handle the edge case where punctuation marks were being considered as spaces. I'm not sure if this is an issue with the question, but most people in the comments seem to think so.

To solve this, clean the paragraph, and once all punctuation is removed/replaced split by space. Create a hash to store the word and its count, and loop through while checking how many times the word appears.

I set a `most_popular` and `max` variable to store the most popular word, and the highest number of occurances of a given word so that I didn't need to go through the hash again.

It feels like there is a cleaner way of doing this, but in terms of speed this feels pretty good - and is pretty much the same as the solution.