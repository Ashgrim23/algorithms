# Definition for a binary tree node.
# class TreeNode
#     attr_accessor :val, :left, :right
#     def initialize(val)
#         @val = val
#         @left, @right = nil, nil
#     end
# end

# @param {TreeNode} root
# @return {Integer}
def diameter_of_binary_tree(root)
    diametro(root)    
end

def diametro(root)
    return 0 if (root.nil?)        
    return 0 if root.right.nil? and root.left.nil?
    ans = [-999999999999]
    height_of_tree = height(root, ans)  
    return ans[0]-1
end

def height(root,ans)
    return 0 if (root.nil?)
    
    lh=height(root.left,ans)
    rh=height(root.right,ans)
    
    ans[0]=[ans[0],1+lh+rh].max
    
    return 1+[lh,rh].max
end
