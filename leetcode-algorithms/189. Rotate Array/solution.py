from typing import List
def rotate(nums: List[int], k: int) -> None:
    k = k % len(nums)
    def revert(nums,i,j):
        while i<j:
            nums[i] = nums[i] + nums[j]
            nums[j] = nums[i] - nums[j]
            nums[i] = nums[i] - nums[j]
            i+=1
            j-=1
    revert(nums,0,len(nums)-1)
    revert(nums,0,k-1)
    revert(nums,k,len(nums)-1)
nums = [1,2,3,4,5,6,7]
k = 3
rotate(nums,k)
print(nums)
