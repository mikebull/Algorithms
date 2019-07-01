# @param {String} s
# @return {String}
def longest_palindrome(s)
    max_substring = ""
    
    for i in 0...s.length do
        # This avoids issues with odd/even lengths
        for j in [0, 1] do
            left = i
            right = i + j
            
            while left >= 0 && s[left].eql?(s[right]) do
                left -= 1
                right += 1
            end
            
            sum = right - left - 1
            
            # puts "Left: #{left}. Right: #{right}. Sum: #{sum}"
            
            max_substring = s[(left + 1...right)] if sum > max_substring.length
        end
        
        # No Better move exists
        break if (max_substring.length / 2).ceil >= s.length - 1
    end

    max_substring
end