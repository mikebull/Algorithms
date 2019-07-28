# @param {String} paragraph
# @param {String[]} banned
# @return {String}
def most_common_word(paragraph, banned)
    paragraph = clean_paragraph(paragraph)

    words = paragraph.downcase
                     .gsub(/[^a-z0-9\s]/i, '')
                     .split(' ')
    
    word_count = {}
    
    most_popular = ''
    max = 0
    
    words.each do |word|
        if word_count.key?(word)
            word_count[word] += 1            
        else
            word_count[word] = 1
        end
        
        val = word_count[word]
        
        if val > max && !banned.include?(word)
            max = val
            most_popular = word
        end
    end
    
    return most_popular
end

def clean_paragraph(paragraph)
    # Fails on test case for comma, so replace comma with space
    paragraph.gsub!(',', ' ')
    paragraph
end