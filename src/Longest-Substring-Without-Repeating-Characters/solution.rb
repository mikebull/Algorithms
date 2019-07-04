# @param {String} s
# @return {Integer}
def length_of_longest_substring(s)
    return 0 if s.empty?
    return 1 if s.length == 1
    
    hash = {}
    
    max = 0
    pointer_to_last_appearance = 0
    
    for i in 0...s.length do
        char = s[i]
        if hash.key?(char)
            pointer_to_last_appearance = [pointer_to_last_appearance, hash[char] + 1].max
        end
        hash[char] = i
        max = [max, i - pointer_to_last_appearance + 1].max
    end
    
    max
end