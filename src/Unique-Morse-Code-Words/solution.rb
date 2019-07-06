# @param {String[]} words
# @return {Integer}
def unique_morse_representations(words)
    hash = {}
    
    words.each do |word|
        morse_word = ""
        word.split("").each do |letter|
            morse_word += alphabet_map[letter]            
        end
        
        hash[morse_word] = word unless hash.key?(morse_word)            
    end
    
    return hash.count
end

def alphabet_map
    alphabet = ["a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z"]
    morse = [".-","-...","-.-.","-..",".","..-.","--.","....","..",".---","-.-",".-..","--","-.","---",".--.","--.-",".-.","...","-","..-","...-",".--","-..-","-.--","--.."] 
    
    hash = {}
    for i in 0..alphabet.length
        hash[alphabet[i]] = morse[i]
    end
    
    hash
end