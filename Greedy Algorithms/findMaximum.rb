
stack1 = [3,10]
stack2 = [4,5]
stack3 = [2,1]

def findMaximum arr1, arr2, arr3
    n1 = arr1.size
    n2 = arr2.size
    n3 = arr3.size
    sum1 = sum2 = sum3 = 0
    n1.times do |i|
        sum1+=arr1[i]
    end
    n2.times do |i|
        sum2+=arr2[i]
    end
    n3.times do |i|
        sum3+=arr3[i]
    end

    return if n1 == 0 || n2 == 0 || n3 == 0
    top1 = top2 = top3 = 0
    while true do 
        return sum1 if sum1 == sum2 && sum2 == sum3
        return if top1 == n1 || top2 == n2 || top3 == n3
        if sum1 >= sum2 && sum1 >= sum3 
            sum1 -= arr1[top1+=1]
        elsif sum2 >= sum1 && sum2 >= sum3 
            sum2 -= arr2[top2+=1]
        elsif sum3 >= sum1 && sum3 >= sum2 
            sum3 -= arr3[top3+=1]
        end    
    end
end

puts findMaximum stack1, stack2, stack3