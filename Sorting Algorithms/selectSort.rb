array = [64, 25, 12, 22, 11]

class SelectSort
    def selectSort arr 
        n = arr.size - 1

        for i in 0..n
            min_ind = i
            for j in (i+1)..n 
                min_ind = j if arr[j] < arr[min_ind]
            end
            arr[min_ind], arr[i] = arr[i], arr[min_ind]
        end
        arr
    end
end

puts SelectSort.new.selectSort array

