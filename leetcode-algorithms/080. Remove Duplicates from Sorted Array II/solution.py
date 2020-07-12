from typing import List
def removeDuplicates(nums: List[int]) -> int:
    if len(nums) == 0:
        return 0
    if len(nums) <= 2:
        return len(nums)
    i,t = 0,0
    count = 0
    while i < len(nums):
        if count < 2:
            count +=1
            nums[t] = nums[i]
            t += 1
        if i<len(nums)-1 and nums[i] != nums[i+1]:
            count = 0
        i+=1

    return t

l = [0,0,1,1,1,1,2,3,3]
print(removeDuplicates(l))
print(l)
