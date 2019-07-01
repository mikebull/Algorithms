# @param {String} s
# @return {Integer}
def length_of_longest_substring(s)
    return 0 if s.empty?
    return 1 if s.length == 1
    
    characters = s.split("")
    
    hash = {}
    
    max = 0
    count = 0
    
    for i in 0...s.length do
        char = s[i]
        if hash.key?(char)
            count = [count, hash[char] + 1].max
        end
        hash[char] = i
        max = [max, i - count + 1].max
    end
    
    max
end