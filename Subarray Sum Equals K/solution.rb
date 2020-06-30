# @param {Integer[]} nums
# @param {Integer} k
# @return {Integer}
def subarray_sum(nums, k)
    n=nums.length()
    prevSum=Hash.new()
    res=0
    currsum=0
    for i in 0..n-1 do
        currsum+=nums[i]
        res+=1 if currsum==k 

        if prevSum.key?(currsum-k) then
            res+=prevSum[currsum-k]
        end

        if prevSum.key?(currsum) then
            prevSum[currsum]+=1
        else
            prevSum[currsum]=1
        end
            
    end       
    
    return res
end
