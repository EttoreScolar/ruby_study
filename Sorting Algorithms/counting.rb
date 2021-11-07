array = %w[g e e k s f o r g e e k s]

class CountingSort
  def sort(arr)
    n = arr.size
    output = []
    count = []
    (0..256).each do |i|
      count.push(0)
    end
    (0..(n - 1)).each do |i|
      count[arr[i]] += 1
    end
    (1..255).each do |i|
      count[i] += count[i - 1]
    end
    (0..(n - 1)).reverse_each do |i|
      output[count[arr[i]] - 1] = arr[i]
      count[arr[i]] -= 1
    end
    arr
  end
end

puts CountingSort.new.sort(array)


