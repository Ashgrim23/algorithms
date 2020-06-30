class Solution {
    public int singleNumber(int[] nums) {
        
        ArrayList<Integer> lista=new ArrayList<Integer>();
        for (int x=0;x<nums.length;x++){
              
            if (lista.contains(nums[x]) ) {
                lista.remove(Integer.valueOf(nums[x]) ); 
            }
            else
            {
                lista.add(nums[x] );
            }
        }
        
        return lista.get(0);
    }
}
