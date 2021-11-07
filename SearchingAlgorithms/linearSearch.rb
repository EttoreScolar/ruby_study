array = [1, 20, 35, 44, 51, 65, 70, 81, 911, 10]

x = 10
class LinearSearch
  def linear_search(element, num)
    (0..element.size - 1).each do |i|
      return i if num == element[i]
    end
    -1
  end
end

puts LinearSearch.new.linear_search array, x
