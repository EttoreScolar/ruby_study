arr = [121, 232, 33, 43, 5]

def reverseArray arr, start, e 
    
    while (start < e)
         
        arr[start], arr[e] = arr[e], arr[start]
        start = start + 1
        e = e - 1
    end
    arr
end

def rightRotate arr, d, n
     
    reverseArray(arr, 0, n - 1)
    reverseArray(arr, 0, d - 1)
    reverseArray(arr, d, n - 1)
    arr
end

puts rightRotate arr, 3, arr.size

