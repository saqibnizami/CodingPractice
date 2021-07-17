"""
Given a string `s`, find the length of the longest substring without repeating characters.

*Example 1*
```
Input: s = "abcabcbb"
Output: 3
Explanation: The answer is "abc", with the length of 3.
```

*Example 2*
```
Input: s = "bbbbb"
Output: 1
Explanation: The answer is "b", with the length of 1.
```

*Example 3*
```
Input: s = "pwwkew"
Output: 3
Explanation: The answer is "wke", with the length of 3. Notice that the answer must be a substring, "pwke" is a subsequence and not a substring.
```

*Example 4*
```
Input: s = ""
Output: 0
```

*Constraints*
`0 <= s. length <= 5 * 10^4`
`s` consists of English letters, digits, symbols, and spaces

"""

class Solution:
    def lengthOfLongestSubstring(self,s):
        # initialize dictionary to store found characters
        found = {}
        # specify the window dimensions, start is the left edge and max_len is the current right boundary
        start = 0
        max_len = 0

        for idx, char in enumerate(s):
            # if the current character has already been found, move up the start
            if char in found and start <= found[char]:
                start = found[char] + 1
            # otherwise, set max_length to the largest found length ( this will correspond to the longest substring found so far )
            else:
                max_len = max(max_len, idx - start + 1)
            # record the index for the current character in the dictionary
            found[char] = idx

        return max_len
