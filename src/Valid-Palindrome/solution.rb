# @param {String} s
# @return {Boolean}
def is_palindrome(s)    
    return true if s.empty?
    
    return true if s.length.eql?(1)
    
    helper(s.downcase, 0, s.length-1)
end

def helper(s, i, j)    
    return true if i >= j
    
    start = s[i]
    finish = s[j]
    
    return helper(s, i+1, j) if is_symbol?(start)
    
    return helper(s, i, j-1) if is_symbol?(finish)
    
    return helper(s, i+1, j-1) if start.eql?(finish)
        
    false
end

def is_symbol?(string)
  string.match(/\A[a-zA-Z0-9]*\z/).nil?
end