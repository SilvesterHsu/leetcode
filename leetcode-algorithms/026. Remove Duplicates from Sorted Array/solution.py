def removeDuplicates(nums: List[int]) -> int:
    if len(nums) == 0:
        return 0
    if len(nums) == 1:
        return 1
    i,t = 0,0
    while i < len(nums)-1:
        if nums[i] != nums[i+1]:
            nums[t] = nums[i]
            t += 1
        i+=1
    nums[t] = nums[i]
    return t+1

l = [1,2,2,3,4,4,5]
print(removeDuplicates(l))
print(l)