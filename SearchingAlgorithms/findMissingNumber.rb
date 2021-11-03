arr = [1, 2, 4, 6, 3, 7, 8]

class FindMissingNumber
  def find_missing_number(array)
    array.sort!
    n = array.size - 1

    (0..n).each do |i|
      return (i + 1) if array[i] != (i + 1)
    end
    -1
  end
end

puts FindMissingNumber.new.find_missing_number arr
