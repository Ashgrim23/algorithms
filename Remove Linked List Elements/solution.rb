# Definition for singly-linked list.
# class ListNode
#     attr_accessor :val, :next
#     def initialize(val)
#         @val = val
#         @next = nil
#     end
# end

# @param {ListNode} head
# @param {Integer} val
# @return {ListNode}
def remove_elements(head, val)
    ListNode *cur=head;
    ListNode *prev=NULL;
    
    while (cur!=NULL ) {
        if (cur->next!=NULL && cur->next->val==val){
            cur->next=cur->next->next
        }
        cur=cur->next;        
    }
    
end
