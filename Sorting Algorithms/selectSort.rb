array = [64, 25, 12, 22, 11]

class SelectSort
  def select_sort(arr)
    n = arr.size - 1

    (0..n).each do |i|
      min_ind = i
      ((i + 1)..n).each do |j|
        min_ind = j if arr[j] < arr[min_ind]
      end
      arr[min_ind], arr[i] = arr[i], arr[min_ind]
    end
    arr
  end
end

puts SelectSort.new.selectSort array

