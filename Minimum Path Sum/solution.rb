# @param {Integer[][]} grid
# @return {Integer}
def min_path_sum(grid)
    m=grid.length()-1
    n=grid[0].length()-1
    
    tc=Array.new(m+1){Array.new(n+1)}
   tc[0][0]=grid[0][0]

    for i in 1..m do
        tc[i][0]=tc[i-1][0]+grid[i][0]
    end

    for j in 1..n do        
        tc[0][j]=tc[0][j-1]+grid[0][j]
    end

    for i in 1..m do
        for j in 1..n do
            tc[i][j]=[tc[i-1][j],tc[i][j-1]].min+grid[i][j]
        end
    end
    return tc[m][n]
end

