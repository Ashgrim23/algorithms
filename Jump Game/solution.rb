# @param {Integer[]} nums
# @return {Boolean}
def can_jump(nums)
    l=nums.length()
    return false if l==0    
    return true if l==1
    max=nums[0]
    
    for i in 0..l-1 do
        if max<=i and nums[i]==0 then
            return false
        end

        if i+nums[i]>max then
            max=i+nums[i]
        end

        if (max>=l-1) then
            return true
        end
    end
    return false
end

