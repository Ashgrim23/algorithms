# @param {String} s
# @return {Boolean}
def check_valid_string(s)
    arr=s.split("")
    l=arr.length()
    leftArr=[]
    starArr=[]
    for i in 0..l-1 do
        if arr[i]=="*" then
            starArr.push(i)
        elsif  arr[i]==")" then
            if leftArr.length()==0 then
                if starArr.length()==0 then
                    return false
                else
                    starArr.pop()
                end
            else
                leftArr.pop()
            end
        elsif  arr[i]=="(" then
                leftArr.push(i)
        end
    end
                
    while (leftArr.length()>0 and starArr.length()>0 ) do
        if leftArr.pop()>starArr.pop() then
            return false;
        end
    end
        
    if (leftArr.length()==0) then
         return true
    else 
        return false
    end
    
end
