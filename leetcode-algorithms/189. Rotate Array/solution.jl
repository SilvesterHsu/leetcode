function rotate(nums::Array, k::Int)
    k = k % length(nums)
    function revert(nums::Array,i::Int,j::Int)
        while i<j
            nums[i] = nums[i] + nums[j]
            nums[j] = nums[i] - nums[j]
            nums[i] = nums[i] - nums[j]
            i+=1
            j-=1
        end
    end
    revert(nums,1,length(nums))
    revert(nums,1,k)
    revert(nums,k+1,length(nums))
end;
nums = [1,2,3,4,5,6,7]
k = 3
rotate(nums,k)
println(nums)
