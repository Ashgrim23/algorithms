# @param {Character[][]} matrix
# @return {Integer}
def maximal_square(matrix)
    return 0 if matrix.nil? or matrix.length()==0 or matrix[0]==0

    m=matrix.length()
    n=matrix[0].length()

    t=Array.new(m){Array.new(n)}

    for i in 0..m-1 do
        t[i][0]=matrix[i][0].to_i
    end

    for j in 0..n-1 do
        t[0][j]=matrix[0][j].to_i
    end

    for i in 1..m-1 do
        for j in 1..n-1 do
            if (matrix[i][j]=="1") then
                min=[ t[i-1][j],t[i-1][j-1],t[i][j-1]].min
                t[i][j]=min+1
            else
                t[i][j]=0
            end
        end
    end

    max=0
    for i in 0..m-1 do
        for j in 0..n-1 do
            if t[i][j]>max then
                max=t[i][j]
            end
        end
    end

    return max*max


end
