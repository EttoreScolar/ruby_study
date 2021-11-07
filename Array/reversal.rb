# frozen_string_literal: true
arr = [121, 232, 33, 43, 5]

class Reversal
  def revers_array(arr, start, e)
    while start < e
      arr[start], arr[e] = arr[e], arr[start]
      start += 1
      e -= 1
    end
    arr
  end

  def right_rotate(arr, d, n)
    revers_array(arr, 0, n - 1)
    revers_array(arr, 0, d - 1)
    revers_array(arr, d, n - 1)
    arr
  end
end

puts Reversal.new.right_rotate(arr, 3, arr.size - 1)
