from typing import List
def removeElement(nums: List[int], val: int) -> int:
    if not nums or not len(nums):
        return 0
    i,t = 0, 0
    while i < len(nums):
        if nums[i] != val:
            nums[t] = nums[i]
            t += 1
        i += 1
    return t

l = [1,2,3,4,5]
print(removeElement(l,3))
print(l)