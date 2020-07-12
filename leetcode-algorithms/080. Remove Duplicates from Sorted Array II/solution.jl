function removeDuplicates(nums::Array)::Int
    if length(nums) == 0
        return 0
    end
    if length(nums) <= 2
        return length(nums)
    end
    i,t = 1,1
    count = 0
    while i <= length(nums)
        if count < 2
            count +=1
            nums[t] = nums[i]
            t += 1
        end
        if i<=length(nums)-1 && nums[i] != nums[i+1]
            count = 0
        end
        i+=1
    end
    return t-1
end;

l = [0,0,1,1,1,1,2,3,3]
println(removeDuplicates(l))
println(l)
