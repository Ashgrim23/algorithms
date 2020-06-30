# Definition for singly-linked list.
# class ListNode
#     attr_accessor :val, :next
#     def initialize(val)
#         @val = val
#         @next = nil
#     end
# end

# @param {ListNode} head
# @return {ListNode}
def middle_node(head)
   len=getLen(head)
   if len%2==0 then
        mid=(len/2)+1     
   else 
       mid=(len/2).ceil+1     
   end
    
   arr=[]
    nodo=head
   1.upto(mid-1) do
       nodo=nodo.next
   end
    
    mid.upto(len) do
      arr.push(nodo.val) 
        nodo=nodo.next
    end;
    
    return arr    
end

def getLen(head)
    return 0 if head.nil? 

    len=1
    nodo=head
    while (!nodo.next.nil?) do
        nodo=nodo.next        
        len+=1
    end;
    return len
end
