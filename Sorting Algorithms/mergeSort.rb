array = [12, 11, 13, 5, 6, 7]

class MergeSort
  def sort(arr, l, r)
    if l < r
      m = l + (r - l) / 2
      sort arr, l, m
      sort arr, m + 1, r
      merge arr, l, m, r
    end
    arr
  end

  def merge(arr, l, m, r)
    n1 = m - l + 1
    n2 = r - m
    array1 = []
    array2 = []
    (0..n1).each do |i|
      array1[i] = arr[l + i]
    end
    (0..n2).each do |i|
      array2[i] = arr[m + 1 + i]
    end
    i = j = 0
    k = l
    while i < n1 && j < n2
      if array1[i] <= array2[j]
        arr[k] = array1[i]
        i += 1
      else
        arr[k] = array2[j]
        j += 1
      end
      k += 1
    end

    while i < n1
      arr[k] = array1[i]
      i += 1
      k += 1
    end
    while j < n2
      arr[k] = array2[j]
      j += 1
      k += 1
    end
  end
end

puts MergeSort.new.sort array, 0, array.size - 1
