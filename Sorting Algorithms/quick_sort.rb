
arr = [10, 7, 8, 9, 1, 5]

class QuickSort
  def partition(arr, low, high)
    pivot = arr[high]
    i = low - 1
    (low..(high - 1)).each do |j|
      if arr[j] < pivot
        i += 1
        arr[i], arr[j] = arr[j], arr[i]
      end
    end
    arr[i + 1], arr[high] = arr[high], arr[i + 1]
    i + 1
  end

  def quick_sort(arr, low, high)
    if low < high
      pi = partition(arr, low, high)
      quick_sort(arr, low, pi - 1)
      quick_sort(arr, pi + 1, high)
    end
    arr
  end
end

puts QuickSort.new.quick_sort(arr, 0, arr.size - 1)
