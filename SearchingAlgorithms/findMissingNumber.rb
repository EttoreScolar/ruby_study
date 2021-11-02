
arr = [1, 2, 4, 6, 3, 7, 8]

class FindMissingNumber
    def findMissingNumber array 
        array.sort!
        n = array.size - 1

        for i in 0..n 
           return (i+1) if array[i] != (i+1)
        end
        return -1
    end
end

puts FindMissingNumber.new.findMissingNumber arr