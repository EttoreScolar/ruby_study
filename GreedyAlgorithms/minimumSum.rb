
a = [2, 3, 4, 5, 4]
b = [3, 4, 2, 3, 2]
n = a.size
k = 3
class MinimumSum 
    def min_product a, b, n, k
        diff = res = 0
        temp = 0
        for i in 0..n
          pro = a[i] * b[i]
          res += pro
          if pro < 0 && b[i] < 0
            temp = (a[i] + 2 * k) * b[i]
          elsif pro < 0 && a[i] < 0
            temp = (a[i] - 2 * k) * b[i]
          elsif pro > 0 && a[i] < 0
            temp = (a[i] + 2 * k) * b[i]
          elsif pro > 0 && a[i] > 0
            temp = (a[i] - 2 * k) * b[i]
          end
          d = (pro - temp).abs
          diff = d if d > diff
          return res - diff
        end
    end
end

puts MinimumSum.new.min_product a, b, n, k