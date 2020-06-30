# Definition for a binary tree node.
# class TreeNode
#     attr_accessor :val, :left, :right
#     def initialize(val = 0, left = nil, right = nil)
#         @val = val
#         @left = left
#         @right = right
#     end
# end
# @param {TreeNode} root
# @return {Integer}
def max_path_sum(root)
    max=[-999999999]
    calculateSum(root,max)
    return max[0]
end

def calculateSum(root,max)
    return 0 if root.nil?
    left=calculateSum(root.left,max)
    right=calculateSum(root.right,max)
    
    current=[root.val,root.val+left,root.val+right].max
    
    max[0]=[max[0],current,left+root.val+right].max
    
    return current;    
end
