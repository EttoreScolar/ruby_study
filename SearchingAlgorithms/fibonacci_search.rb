
class FibonacciSearch
  def min(x, y)
    x <= y ? x : y
  end

  def fibonacci_search(arr, x, n)
    fib_mm_2 = 0
    fib_mm_1 = 1
    fib_m = fib_mm_1 + fib_mm_2

    while fib_m < n
      fib_mm_2 = fib_mm_1
      fib_mm_1 = fib_m
      fib_m = fib_mm_1 + fib_mm_2
    end
    off_set = -1
    while fib_m > 1
      i = min(off_set + fib_mm_2, n - 1)
      if arr[i] < x
        fib_m = fib_mm_1
        fib_mm_1 = fib_mm_2
        fib_mm_2 = fib_m - fib_mm_1
        off_set = i
      elsif arr[i] > x
        fib_m = fib_mm_2
        fib_mm_1 -= fib_mm_2
        fib_mm_2 = fib_m - fib_mm_1
      else
        return i
      end
    end
    return n - 1 if fib_mm_1 == 1 && arr[n - 1] == x

    -1
  end
end

arr = [10, 22, 35, 40, 45, 50, 80, 82, 85, 90, 100, 235]

puts FibonacciSearch.new.fibonacci_search(arr, 235, 12)
