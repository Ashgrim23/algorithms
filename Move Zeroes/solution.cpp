class Solution {
public:
    void moveZeroes(vector<int>& nums) {
        int l=nums.size();
        int count=0;
        for (auto x=0;x<l;x++){
            if (nums[x]!=0){
                nums[count]=nums[x];
                count++;
            }            
        }
        
        for (auto x=count;x<l;x++)
            nums[x]=0;
    }
};
