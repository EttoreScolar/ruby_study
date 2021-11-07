array = [-2, 0, 5, -1, 2]

class MaximizeSum
  def maximize_sum(arr, k)
    n = arr.size
    max = 10_000
    (0..k).each do |i|
      min = max
      index = -1
      n.times do |j|
        min, index = arr[j], j if arr[j] < min
      end
      break if min.zero?

      arr[index] = -arr[index]
    end
    sum = 0
    n.times do |i|
      sum += arr[i]
    end
    sum
  end
end

k = 4
puts MaximizeSum.new.maximize_sum array, k
