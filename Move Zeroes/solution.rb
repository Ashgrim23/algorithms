def move_zeroes(nums)
  zeros=nums.count(0)
  nums.delete(0)
    for n in 1..zeros do
        nums.push(0)
    end
end
