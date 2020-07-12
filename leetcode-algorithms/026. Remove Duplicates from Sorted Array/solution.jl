function removeDuplicates(nums::Array)::Int
    if length(nums) == 0
        return 0
    end
    if length(nums) == 1
        return 1
    end
    i,t = 1,1
    while i <= length(nums)-1
        if nums[i] != nums[i+1]
            nums[t] = nums[i]
            t += 1
        end
        i += 1
    end
    nums[t] = nums[i]
    return t
end;

l = [1,2,2,3,4,4,5]
println(removeDuplicates(l))
println(l)
