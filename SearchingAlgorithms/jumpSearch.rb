array = [0, 1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89, 144, 233, 377, 610]
x = 55

class JumpSearch
    def minValue value1, value2
        return value1 if value1 > value2
        return value2 
    end

    def jump_search arr, element 
        n = arr.size
        step = Math.sqrt(n).floor()
        prev = 0
        while arr[minValue(step,n)-1] < element do
            prev = step 
            step += Math.sqrt(n).floor()
            return -1 if prev >= n
        end

        while arr[prev] < element do 
            prev = prev + 1
            return -1 if prev.eql? minValue(step,n)
        end

        return prev if arr[prev].eql? element
        return -1
    end
end

puts JumpSearch.new.jump_search array, x