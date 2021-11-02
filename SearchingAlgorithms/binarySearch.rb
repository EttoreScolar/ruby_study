
array = [1,2,3,4,5,6,7,8,9,10]

x = 10

class BinarySearch
    def binary_search element, num
        max = element.size - 1
        for i in 0..element.size
            return i if element[i] == num
            if element[i] > num 
                max = max + 1
            else
                i = max - 1
            end 
            i = (i+max)/2
        end

        return -1
    end
end

puts BinarySearch.new.binary_search array, x