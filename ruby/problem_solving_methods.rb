#Release 0

def search_array(array, num)
    answer = nil
    (array.length+1).times do | index |
        if array[index] == num
            answer = index
        end
    end
    answer
end

arr = [42, 89, 23, 1]
p search_array(arr, 1)
p search_array([1,4,2,5], 2)
# => 3
# p search_array(arr, 24)
# => nil


#Release 1
def fib(num)
    array = [0, 1]
    previous = 0
    current = 1
    (num - 2).times do | i |
        next_num = previous + current
        array.push(next_num)
        previous = current
        current = next_num
    end
    array
end

p fib(100)[-1]

#Release 2
