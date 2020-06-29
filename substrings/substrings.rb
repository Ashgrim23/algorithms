def substrings(cadena,diccionario='')
  if (diccionario.kind_of?(Array) && diccionario.length>0   ) then
       matches= Hash.new;
         diccionario.each_with_index do |palabra,i|
         matches[palabra]=cadena.gsub(palabra).count;
       end;
       puts matches;
  end;
end;
