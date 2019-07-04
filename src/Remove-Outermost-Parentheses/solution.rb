# @param {String} s
# @return {String}
def remove_outer_parentheses(s)
    open_parentheses = 0
    
    str = ""
    
    s.split("").each do |char|
        str = str.concat(char) if char == '(' && open_parentheses > 0
        str = str.concat(char) if char == ')' && open_parentheses > 1
        
        open_parentheses += 1 if char.eql? '('
        open_parentheses -= 1 if char.eql? ')'
    end
    
    str
end