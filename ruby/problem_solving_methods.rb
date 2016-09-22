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


#