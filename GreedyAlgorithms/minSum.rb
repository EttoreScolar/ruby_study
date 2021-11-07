# frozen_string_literal: true

array = [1, 2, 3, 4, 56, 7, 88, 9]

class MinSum
  def min_sum(element)
    min_value = element.min
    min_value * (element.size - 1)
  end
end

puts MinSum.new.min_sum array
