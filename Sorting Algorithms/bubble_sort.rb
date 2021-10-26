
array = [5,4,2,1,6,8,7,9,0]

def bubbleSort(arr)
    arr.size.times do |i|
        arr.size.times do |j|
            if arr[i] < arr[j]
                arr[i], arr[j] = arr[j], arr[i]
            end
        end
    end
    arr
end

  

array =  bubbleSort (array)

puts array
