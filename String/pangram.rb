string = 'A raposa marrom rápida salta sobre o cachorro'
class Pangram
  def pangram(str)
    arr = []
    (0..(str.size - 1)).each do |i|
      arr.push(str[i].ord) if str[i].ord >= 65 && str[i].ord <= 90
    end
    if arr.uniq.size == 25
      'É Pangram'
    else
      'Não é Pangram'
    end
  end
end

puts Pangram.new.pangram string


