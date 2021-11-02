
string = " A raposa marrom rápida salta sobre o cachorro"
class Pangram
    def pangram str
        arr = [] 
        for i in 0..(str.size-1)
            if str[i].ord >= 65 && str[i].ord <= 90
                arr.push(str[i].ord)
            end
        end
        if arr.uniq.size == 25
            return "É Pangram"
        else
            return "Não é Pangram"
        end 
    end
end
 
puts Pangram.new.pangram string