array = [-1,-1,-2,4,3]

def minimumProduct arr
    
    return arr[0] if arr.size == 1
    return 0 if arr.max == 0
    product = 1
    for i in 0..(arr.size - 1)
        if arr[i] != 0
            product *= arr[i]
        end
    end
    return product
end

puts minimumProduct array