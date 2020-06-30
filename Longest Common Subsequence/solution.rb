# @param {String} text1
# @param {String} text2
# @return {Integer}
def longest_common_subsequence(text1, text2)
    len1=text1.length()
    len2=text2.length()
    l=Array.new(len1+1){Array.new(len2+1)}
    for i in 0..len1 do
        for j in 0..len2 do
            if i==0 or j==0 then
                l[i][j]=0
            elsif (text1[i-1]==text2[j-1]) then
                l[i][j]=l[i-1][j-1]+1
            else
                l[i][j]=[l[i-1][j],l[i][j-1]].max
            end
            
        end
    end
    return l[len1][len2]
end
