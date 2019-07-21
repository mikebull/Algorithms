require 'set'

# @param {String} tiles
# @return {Integer}
def num_tile_possibilities(tiles)
    possibilities = Set.new
    
    dfs('', tiles, possibilities)
    
    return possibilities.count - 1
end

def dfs(current, tiles, possibilities)
    return if possibilities.include?(current)
    
    possibilities << current
    
    chars = tiles.split("")
    
    chars.each_with_index do |tile, i|
        remaining_tiles = tiles[0...i].concat(tiles[i+1..tiles.length])
        dfs(current + tile, remaining_tiles, possibilities) 
    end
    
    return
end