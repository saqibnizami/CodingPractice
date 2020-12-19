#! /usr/bin/env python3
"""
1. Two Sum

Given an array of integers nums and an integer target, return indices of the two numbers such that they add up to target.

You may assume that each input would have exactly one solution, and you may not use the same element twice.

You can return the answer in any order.



Example 1:

Input: nums = [2,7,11,15], target = 9
Output: [0,1]
Output: Because nums[0] + nums[1] == 9, we return [0, 1].

Example 2:

Input: nums = [3,2,4], target = 6
Output: [1,2]

Example 3:

Input: nums = [3,3], target = 6
Output: [0,1]



Constraints:

    2 <= nums.length <= 103
    -109 <= nums[i] <= 109
    -109 <= target <= 109
    Only one valid answer exists.

"""

from typing import List


class Solution:
    def __init__(self):
        pass

    def twoSum(self, nums: List[int], target: int) -> List[int]:
        """
        Strategy: Create a dictionary to hold observations of values and their index while iterating through the list.
            Check dictionary for difference in target and current value.
        :param nums: list of integers
        :param target: integer
        :return: list of indicies whose values add up to the target
        """
        obs = {}
        for i, num in enumerate(nums):
            difference = target - num

            if difference in obs:
                return [i, obs[difference]]
            else:
                obs[num]= i



if __name__ == "__main__":
    # test case
    nums = [3,2,4]
    target = 6
    s = Solution()
    result = s.twoSum(nums=nums, target=target)
    print(result)