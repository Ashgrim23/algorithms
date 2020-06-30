# @param {Integer[]} prices
# @return {Integer}
def max_profit(prices)
    if prices.length()==0 then return 0 end;
    sumProfits=0
    for x in (1..prices.length()-1) do
        if prices[x-1]<prices[x] then
            sumProfits+=prices[x]-prices[x-1]
        end;
    end;
    return sumProfits;
end
