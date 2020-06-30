# @param {Integer} n
# @return {Boolean}
def is_happy(n)    
    visto=[]
    until n==1 
        chars=n.to_s.split("")        
        sum=0
        chars.each {|c|
            sum+=(c.to_i*c.to_i)                    
        }    
        n=sum      
        if visto.include? n then    
            return false
        else
            visto.push(n)
        end
    end
    return true
end
