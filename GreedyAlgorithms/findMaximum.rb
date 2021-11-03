stack1 = [3, 10]
stack2 = [4, 5]
stack3 = [2, 1]

class FindMaximum
  def find_maximum(arr1, arr2, arr3)
    n1 = arr1.size
    n2 = arr2.size
    n3 = arr3.size
    sum1 = sum2 = sum3 = 0
    n1.times do |i|
      sum1 += arr1[i]
    end
    n2.times do |i|
      sum2 += arr2[i]
    end
    n3.times do |i|
      sum3 += arr3[i]
    end

    return if n1.zero? || n2.zero? || n3.zero?

    top1 = top2 = top3 = 0
    loop do
      return sum1 if sum1 == sum2 && sum2 == sum3
      return if top1 == n1 || top2 == n2 || top3 == n3

      if sum1 >= sum2 && sum1 >= sum3
        sum1 -= arr1[top1 += 1]
      elsif sum2 >= sum1 && sum2 >= sum3
        sum2 -= arr2[top2 += 1]
      elsif sum3 >= sum1 && sum3 >= sum2
        sum3 -= arr3[top3 += 1]
      end
    end
  end
end

puts FindMaximum.new.find_maximum stack1, stack2, stack3
