class LRUCache
    @LRU
    @capacity    
    def initialize(capacity)
        @LRU={}
        @capacity=capacity
    end
    
       
    def get(key)    
        value=-1
        if @LRU.key?(key) then
            value=@LRU[key]
            @LRU.delete(key)
            @LRU[key]=value
        end
        return value
    end

    def put(key, value)        
        if @LRU.key?(key) then
            @LRU.delete(key)
            @LRU[key]=value
        else
            @LRU.shift  if @LRU.length()==@capacity       
            @LRU[key]=value
        end;        
    end
    
end
    
    # Your LRUCache object will be instantiated and called as such:
    # obj = LRUCache.new(capacity)
    # param_1 = obj.get(key)
    # obj.put(key, value)
