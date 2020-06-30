# @param {Integer[]} nums
# @return {Integer}
def single_number(nums)
    lista=[]
    for x in (0..nums.length()-1) do
      if lista.include?(nums[x]) then 
          lista.delete(nums[x])
      else 
          lista.push(nums[x])      
      end;
     end;
    return lista[0]
end
