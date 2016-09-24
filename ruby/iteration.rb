# Release 0
# Write Your Own Method That Takes a Block
# - define a shopping list method
#       - declare two strings to be returned in the block
# - print a message before the block runs
#       - run the block which prints a sentence using the two declared objects
# - print  message after the block ran
#------------------------------------------------------------------------------------------------------------------------------
def shopping_list
    item1 = "coffee"
    item2 = "milk"
    puts "This is our list:"
    yield(item1, item2)
    puts "End of list"
end
puts "Before we run our method and block:"
puts shopping_list { |item1, item2 | puts "Buy #{item1} and #{item2} today!"}
puts "After we ran it"
#------------------------------------------------------------------------------------------------------------------------------

#Illustrative example from the video - not for grading - start
# letters = ["a", "b", "c", "d", "e"]
# new_letters = []

# puts "Original data:"
# p letters

# letters.each do |letter|
#     new_letters << letter.next
# end

# puts "After .each call:"
# p letters
# p new_letters

# numbers = {1 => 'one', 2 => 'two', 3 => 'three'}
# numbers.each do  |digit, word|
#     puts "#{digit} is spelled out as #{word}."
# end

# new_letters = letters.map do | letter |
#     puts letter
#     letter.next
# end

# "After .map call"
# p letters

# letters.map! do | letter |
#     puts letter
#     letter.next
# end

# "After .map! call"
# p letters
# p new_letters
#Illustrative example from the video - not for grading - end

#------------------------------------------------------------------------------------------------------------------------------
#Release 1
# - Declare an array and a hash, and populate each of them with some data
#------------------------------------------------------------------------------------------------------------------------------
animals = ["dog", "cat", "cow", "hippo"]
languages = {
    america: "English",
    spain: "Spain",
    france: "French",
    portugal: "Portugese"
}

#.each method on array and hash
animals.each { | name | puts "This animal is on the farm: #{name}"}
languages.each { | country, language | puts "#{country.capitalize} speaks #{language}"}

#.map! method on array
animals.map! {| name | name.upcase }
p animals


#------------------------------------------------------------------------------------------------------------------------------
#Release 2
# Add sample calls, one for the array, and one for the hash that accomplish these:
#------------------------------------------------------------------------------------------------------------------------------
# - A method that iterates through the items, deleting any that meet a certain condition
p animals.delete_if {|name| name.length < 4 }
p languages.delete_if { |country, language| country.length < 6 && language.length > 4}


p animals.reject! {|name| name.length < 4 }
p languages.reject! { |country, language| country.length < 6 && language.length > 4}

# - A method that filters a data structure for only items that do satisfy a certain condition
p animals.select! { |name| name.length == 3 }
p languages.select! { |country, language| language == "English"}

# - A different method that filters a data structure for only items satisfying a certain condition
p animals.keep_if { |name| name.length == 3}
p languages.keep_if { |country, language| language != "French" }

# - A method that will remove items from a data structure until the condition in the block evaluates to false, then stops
p languages.drop_while { |country, language| language != "Portugese"}
p animals.drop_while { |name| name.length < 4 }