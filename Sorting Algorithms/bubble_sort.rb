array = [5, 4, 2, 1, 6, 8, 7, 9, 0]
class BubbleSort
  def bubble_sort(arr)
    n = arr.size - 1
    (0..n).each do |i|
      (i..n).each do |j|
        arr[i], arr[j] = arr[j], arr[i] if arr[i] > arr[j]
      end
    end
    arr
  end
end
puts BubbleSort.new.bubble_sort array
