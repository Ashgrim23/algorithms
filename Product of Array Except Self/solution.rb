# @param {Integer[]} nums
# @return {Integer[]}
def product_except_self(nums)
    
    n=nums.length()
    return [0] if n==1
    
    i,temp=1,1
    out=Array.new(n, 1)
    
    for i in 0..n-1 do
        out[i]=temp
        temp*=nums[i]        
    end;
    
    temp=1
    
    for i in (n-1).downto(0) do
        out[i]*=temp
        temp *=nums[i]        
    end
    
    return out
    
end
