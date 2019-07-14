# @param {Integer[]} deck
# @return {Integer[]}
def deck_revealed_increasing(deck)
    deck = deck.sort    
    queue = Array.new(deck.length - 1)
    
    for i in 0..deck.length - 1
       queue[i] = i 
    end
    
    result = []
    
    pointer = 0
    
    for i in 0..deck.length - 1
        result[queue.shift] = deck[i]
        queue.push(queue.shift)
    end
    
    result
end