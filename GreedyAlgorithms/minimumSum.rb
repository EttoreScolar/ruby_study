
a = [2, 3, 4, 5, 4]
b = [3, 4, 2, 3, 2]
n = a.size
k = 3
class MinimumSum 
  def min_product(a, b, n, k)
    diff = res = 0
    temp = 0
    pro = 0
    (0..n).each do |i|
      pro = a[i] * b[i]
      res += pro
      if pro.negative? && (b[i]).negative?
        temp = (a[i] + 2 * k) * b[i]
      elsif pro.negative? && (a[i]).negative?
        temp = (a[i] - 2 * k) * b[i]
      elsif pro.positive? && (a[i]).negative?
        temp = (a[i] + 2 * k) * b[i]
      elsif pro.positive? && (a[i]).positive?
        temp = (a[i] - 2 * k) * b[i]
      end
      d = (pro - temp).abs
      diff = d if d > diff
      res - diff
    end
  end
end

puts MinimumSum.new.min_product a, b, n, k