def backspace_compare(s, t)

    while s.include? "#" do
        i=s.index("#")
        s[i]=""
        s[i-1]="" if i>0         
    end;

    while t.include? "#" do
        i=t.index("#")
        t[i]=""
        t[i-1]="" if i>0
    end;
        
    return t==s
    
end
