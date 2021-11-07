arr = [12, 13, 1, 10, 34, 1]
class FindThree
  def show_3_largest(arr)
    arr_size = arr.size

    return 0 if arr_size < 3

    first = second = third = -2_147_483_648

    (0..(arr_size - 1)).each do |i|
      if arr[i] > first
        third = second
        second = first
        first = arr[i]
      elsif arr[i] > second
        third = second
        second = arr[i]
      elsif arr[i] > third
        third = arr[i]
      end
    end
    [third, second, first]
  end
end
