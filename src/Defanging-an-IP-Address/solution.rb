# @param {String} address
# @return {String}
def defang_i_paddr(address)
    i = 0
    
    while i <= address.length-1
        if address[i].eql?(".")
            address[i] = "[.]"
            i += 2
        else
            i += 1
        end
    end
    
    address
end