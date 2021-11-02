
array = [5,4,2,1,6,8,7,9,0]
class BubbleSort
    def bubble_sort arr
        n = arr.size - 1
        for i in 0..n
            for j in i..n
                if arr[i] > arr[j]
                    arr[i], arr[j] = arr[j], arr[i]
                end
            end
        end
        arr   
    end
end
puts BubbleSort.new.bubble_sort array
