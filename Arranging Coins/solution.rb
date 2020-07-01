def arrange_coins(n)
    rows=0
    x=0
    cnt=1
    while (cnt<=n) do
        x+=cnt        
        if x<=n then
            rows+=1         
            cnt+=1
        else 
            return cnt-1
        end                
    end
    return cnt-1
end
