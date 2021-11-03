array = [-1, -1, -2, 4, 3]

class MinimumProduct
  def minimum_product(arr)

    return arr[0] if arr.size == 1

    return 0 if arr.max.zero?

    product = 1
    (0..(arr.size - 1)).each do |i|
      product *= arr[i] if arr[i] != 0
    end
    product
  end
end

puts MinimumProduct.new.minimum_product array
