def group_anagrams(strs)
    anaArr={}
    sortArr=strs.map{|string| string.each_char.sort }
    npalabras=strs.length()
    i=0
    while i<npalabras    do
        
        if anaArr.empty? then
            anaArr[sortArr[i]]=[strs[i]]
        else
            if anaArr.key?(sortArr[i]) then
                anaArr[sortArr[i]].push(strs[i])                                        
            else
                anaArr[sortArr[i]]= [strs[i]]
            end        
        end   
        i+=1     
    end
    return anaArr.values
end
