arr = [12, 13, 1, 10, 34, 1]
class FindThree
    def show_3_largest(arr)
        arr_size = arr.size

        return 0 if arr_size < 3

        first = second = third = -2147483648

        (0..(arr_size - 1)).each do |i|
            if (arr[i] > first) 
                third = second
                second = first
                first = arr[i]
            elsif (arr[i] > second) 
                third = second
                second = arr[i]
            elsif (arr[i] > third)
                third = arr[i]
            end
        end
        puts "Os três maiores elementos são: #{third}, #{second}, #{first}"
    end
end

FindThree.new.show_3_largest(arr)