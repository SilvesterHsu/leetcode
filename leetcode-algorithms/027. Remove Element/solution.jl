function removeElement(nums::Array, val::Int)
    if length(nums) == 0
        return 0
    end
    i,t = 1,1
    while i <= length(nums)
        if val != nums[i]
            nums[t] = nums[i]
            t += 1
        end
        i+=1        
    end
    return t-1 # index start from 1
end;

l = [1,2,3,4,5]
println(removeElement(l,3))
println(l)