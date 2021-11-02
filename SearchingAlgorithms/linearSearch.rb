
array = [1,20,35,44,51,65,70,81,911,10]

x = 10
class LinearSeach
    def linearSearch element, num
        for i in 0..element.size
            return i if num == element[i]
        end
        return -1
    end
end

puts LinearSearch.new.linear_search array, x