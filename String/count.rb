string = '# GeeKs01fOr @ gEEks07'

class Count
  def count_caracter(str)

    maiuscula = 0
    minuscula = 0
    numero = 0
    especial = 0

    (0..(str.size - 1)).each do |i|
      if str[i].ord >= 65 && str[i].ord <= 90
        maiuscula += 1
      elsif str[i].ord >= 97 && str[i].ord <= 122
        minuscula += 1
      elsif str[i].ord >= 48 && str[i].ord <= 57
        numero += 1
      else
        especial += 1
      end
    end

    puts "Maiuscula: #{maiuscula} \nMinuscula: #{minuscula} \nNumero: #{numero} \nEspecial: #{especial}"
  end
end

Count.new.count_caracter string