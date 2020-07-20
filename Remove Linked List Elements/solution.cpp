/**
 * Definition for singly-linked list.
 * struct ListNode {
 *     int val;
 *     ListNode *next;
 *     ListNode() : val(0), next(nullptr) {}
 *     ListNode(int x) : val(x), next(nullptr) {}
 *     ListNode(int x, ListNode *next) : val(x), next(next) {}
 * };
 */
class Solution {
public:
    ListNode* removeElements(ListNode* head, int val) {
        while (head!=NULL && head->val==val ){
            head=head->next;
        }
        
        ListNode *cur=head;
        ListNode *next=NULL;
        while (cur!=NULL){
            next=cur->next;
            while (next!=NULL && next->val==val){
                next=next->next;
            }
            cur->next=next;            
            cur=cur->next;
        }
        return head;
    }
};
