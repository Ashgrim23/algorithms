
def bst_from_preorder(preorder)        
    size=preorder.length()
    root=TreeNode.new(preorder[0])
    s=[]
    s.push(root)
    i=1
    while (i<size) do
        temp=nil
        while ( s.length()>0 and preorder[i]>s[-1].val ) do
            temp=s.pop()
        end

        if temp!=nil then
            temp.right=TreeNode.new(preorder[i])
            s.push(temp.right)
        else
            temp=s[-1]
            temp.left=TreeNode.new(preorder[i])
            s.push(temp.left)
        end
        i+=1
    end

    return root    
end
