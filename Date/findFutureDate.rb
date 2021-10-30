require 'date'
arr = ["22/4/1233", "4/12/233", "1/3/633", "23/5/56645"]

query = ["4/4/34234234"]

def convertArrayToDate array 
    for i in 0..(array.size-1)
        array[i] = (Date.parse array[i]).strftime('%Q')
    end
    array.sort
end



def serachNextClosestDate arraySource, arrayWithDate

   return -1 if arrayWithDate.max > arraySource.max
   arrayTemp = []
   arrayFinal = []
   for i in 0..(arrayWithDate.size -1)
        for j in 0..(arraySource.size-1)
            arrayTemp[j].push (arrayWithDate[i] - arraySource[j]).abs
        end
        arrayFinal.push arrayTemp.min
        arrayTemp.clear
    end
    return arrayFinal
end


source = convertArrayToDate arr
target = convertArrayToDate query

puts serachNextClosestDate source, target