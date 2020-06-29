def stock_picker(array=[])
  
  if (array.kind_of?(Array) && array.length>0   ) then
    profit= Hash.new;
    maxvta=0.0;
    array.each_with_index do |comp,i|
     
        ventas=array.select.each_with_index{|val,idx| idx>i && comp<val}.max
        profit[i]=ventas.to_f-comp.to_f;        
        if ventas.to_f>maxvta then 
            maxvta=ventas.to_f; 
        end;
        puts 'idx'+i.to_s+'compra: '+comp.to_s+' venta: '+ventas.to_s+' '+profit[i].to_s;

    end;
    mejorprof=profit.select { |k,v| v == profit.values.max }
    
    puts 'compra el dia '+mejorprof.keys[0].to_s+' y vende el dia '+array.find_index(maxvta).to_s+' para una ganancia de '+mejorprof.values[0].to_s;
  else
    puts 'arreglo invalido';
    return false; 
  end;
end;
