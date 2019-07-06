# Unique Morse Code Words

From: Leetcode

## Description

International Morse Code defines a standard encoding where each letter is mapped to a series of dots and dashes, as follows: `"a"` maps to `".-"`, `"b"` maps to `"-..."`, `"c"` maps to `"-.-."`, and so on.

For convenience, the full table for the 26 letters of the English alphabet is given below:

```
[".-","-...","-.-.","-..",".","..-.","--.","....","..",".---","-.-",".-..","--","-.","---",".--.","--.-",".-.","...","-","..-","...-",".--","-..-","-.--","--.."]
```

Now, given a list of words, each word can be written as a concatenation of the Morse code of each letter. For example, "cba" can be written as `"-.-..--..."`, (which is the concatenation `"-.-."` + `"-..."` + `".-"`). We'll call such a concatenation, the transformation of a word.

Return the number of different transformations among all words we have.

```
**Example:**
**Input:** words = ["gin", "zen", "gig", "msg"]
**Output:** 2
**Explanation:** 
The transformation of each word is:
"gin" -> "--...-."
"zen" -> "--...-."
"gig" -> "--...--."
"msg" -> "--...--."

There are 2 different transformations, "--...-." and "--...--.".
```

**Note:**

* The length of words will be at most 100.
* Each words[i] will have length in range [1, 12].
* words[i] will only consist of lowercase letters.

## Solution
Another relatively straightforward solution that can be solved easily with a hash table.

One part I'm not happy with is the `alphabet_map` method. Aside from obvious memoisation that can be done to tidy this up, I should learn how to do the ASCII trick to turn numbers into letters so I don't need to type an entire alphabet into an array.

The solution itself is to iterate over the words, then split into letters and create the concatenated morse code word. Add this to a hash table with the morse code as the key, and if it is unique it goes in. Once the loops are done, count the number of elements in your hash table and you're done.