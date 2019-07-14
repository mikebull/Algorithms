# @param {Integer[]} a
# @return {Integer[]}
def sort_array_by_parity(a)
    return a if a.length < 2
    
    left = 0
    right = a.length - 1
    
    while left <= right
        left += 1 if is_even?(a[left])
        right -= 1 if is_odd?(a[right])
        
        if left <= right && (is_odd?(a[left]) && is_even?(a[right]))
            tmp = a[left]
            a[left] = a[right]
            a[right] = tmp
            
            left += 1
            right -= 1
        end            
    end
    
    a
end
    
def is_even?(val)
   val % 2 == 0
end
    
def is_odd?(val)
    !is_even?(val)
end