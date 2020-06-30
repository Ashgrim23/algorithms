# @param {Integer[]} stones
# @return {Integer}
def last_stone_weight(stones)
    
    while stones.length()>1 do
        stones.sort!
        newstone=stones[-1]-stones[-2]
        stones.slice!(-2..-1)
        stones << newstone
    end    
    return stones[0]
end
