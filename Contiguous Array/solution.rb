# @param {Integer[]} nums
# @return {Integer}
def find_max_length(nums)
    l=nums.length()        
    hash=Hash.new()
    hash[0]=-1;
    count_0=0
    count_1=0
    rs=0
    i=0
    while i<l do
        if nums[i]==0 then
            count_0+=1
        else
            count_1+=1
        end
        if hash.has_key?(count_1-count_0) then
            rs=[rs, i-hash[count_1-count_0] ].max
        else
            hash[count_1-count_0]=i;
        end
        i+=1
    end
    return rs    
end
