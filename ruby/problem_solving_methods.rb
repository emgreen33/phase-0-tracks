#Release 0
#Index Search Method
# - define a method that is given two parameters, an array and a number to search for
# - set variable answer to nil to update later
# - iterate through the array checking if the number is present
#       - if the number appears
#               - return the index of the numbers position in the array
# - end the search and return the answer

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
#Fibonacci Numbers
# - define a method that is given a number as a parameter
#       - create an array with the first two numbers already present
#       - create two integers, one of the previous number and the current one
#            - add the previous and the current numbers together and set value to next number in array
#            - add this new number to the end of the array and update previous and current
# - return the new array

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
#Bubble sort
# - method is given an indexed list of numbers
# - loop through the list until it's sorted
#       - if the number after the current number is smaller
#               - swap them over
# - when the whole list is sorted exit the loop
# - print the sorted list of numbers


def bubble_sort(array)
    sorted = false
    until sorted
        sorted = true
        (array.length-1).times do | index |
            if array[index] > array[index+1]
                array[index], array[index+1] = array[index+1], array[index]
                sorted = false
            end
        end
    end
    array
end

array = [1,5,6,3,5,3,7]

p bubble_sort(array)

