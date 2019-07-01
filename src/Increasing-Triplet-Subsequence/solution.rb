# @param {Integer[]} nums
# @return {Boolean}
def increasing_triplet(nums)
    # Set big and small to max integer
    big = 2147483647
    small = 2147483647
    
    nums.each do |num|
        if small >= num
            small = num
        elsif big >= num
            big = num
        else
            return true
        end
    end
    
    false
end