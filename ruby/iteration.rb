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

