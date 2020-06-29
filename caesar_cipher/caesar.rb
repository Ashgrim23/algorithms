def caesar_cipher(str,amount=1)
    if (amount<0)
     return caesar_cipher(str, amount + 26);
    end;
    output='';

    for i in 0..str.length 
    c=str[i];
    
    if c=~ /[a-zA-Z]/
        
        codigo=c.ord;
        if ((codigo >= 65) && (codigo <= 90))
            c = (((codigo - 65 + amount) % 26) + 65).chr;
        end;
        if ((codigo >= 97) && (codigo <= 122))
            c = (((codigo - 97 + amount) % 26) + 97).chr;
        end;    
    end;
    output+=c.to_s;
    end;

    return output;

end;
