

array = [-2, 0, 5, -1, 2]

def maximizeSum arr, k
    n = arr.size
    max = 10000
    for i in 0..k
        min = max
        index = -1
        n.times do |j|
            min, index = arr[j], j if arr[j] < min
        end
        break if min == 0
        arr[index] = -arr[index]
    end
    sum = 0 
    n.times do |i|
        sum = sum + arr[i]
    end
    return sum
end

k = 4
puts maximizeSum array, k