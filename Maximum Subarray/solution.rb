def max_sub_array(nums)
    maxaqui=0
    maxfinal=-2147483647

    for i in (0..nums.length()-1)
        maxaqui+=nums[i]
        if (maxfinal<maxaqui) then
            maxfinal=maxaqui
        end

        if maxaqui<0 then
            maxaqui=0
        end
    end
    return maxfinal

end
