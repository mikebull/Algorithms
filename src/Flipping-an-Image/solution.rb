# @param {Integer[][]} a
# @return {Integer[][]}
def flip_and_invert_image(a)
    for i in 0..a.length-1
        stack = []
        for j in 0..a[i].length-1
            val = a[i][j]
            
            if val % 2 == 0
                stack.push(1)
            else
                stack.push(0)
            end
        end
        
        for j in 0..a[i].length-1
           a[i][j] = stack.pop 
        end
    end
    
    a
end