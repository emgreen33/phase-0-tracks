#Release 0
# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps:
  # split the string into an array separated by spaces
  # set default quantity to one and add it into our list
  # print the list to the console
# output: print the hash shopping list

# Method to add an item to a list
# input: item name and optional quantity
# steps: add the grocery item as a item and quantity pair to shopping list
# output: print the updated hash shopping list

# Method to remove an item from the list
# input: item the user wants to remove
# steps: take item to symbol and
#                   - If it's in the list then delete it if it is
# output: print the new modified shopping list

# Method to update the quantity of an item
# input: item the user wants to update and quantity
# steps: - If it's there and then update new quantity by setting the key to new quanityt
# output: print the new modified shopping list

# Method to print a list and make it look pretty
# input: takes in the shopping list hash
# steps: iterate through each key/value pair
# output: print a clean list to user

#Release 1: Initial Solution
food = "carrots apples cereal pizza"
# shopping_list = {}
# def create_list(groceries, shopping_list)
def create_list(groceries)
    shopping_list = {}
    grocery_array = groceries.split(" ")
    grocery_array.each do | item |
        # shopping_list[item] = 1
        # add_item(item, 1, shopping_list)
        add_item(item, 1, shopping_list)
    end
    print_list(shopping_list)
end

def add_item(item, quantity, shopping_list)
    shopping_list[item] = quantity
    print_list(shopping_list)
end

# def add_item(item, quantity)
#     shopping_list = create_list(food)
#     shopping_list[item] = quantity
#     shopping_list
# end

def remove_item(item, shopping_list)
    if shopping_list.has_key?(item)
        shopping_list.delete(item)
    else
        puts "Not in the list."
    end
    print_list(shopping_list)
end

def update_item(item, quantity, shopping_list)
    if shopping_list.has_key?(item)
        shopping_list[item] = quantity
    else
        puts "Not in the list."
    end
    print_list(shopping_list)
end

def print_list(shopping_list)
    shopping_list.each do | item, quantity|
        puts "Item: #{item}, #{quantity}"
    end
end

# p create_list(food, shopping_list)
shopping_list = create_list(food)
p add_item("cheese", 2, shopping_list)
# p add_item("cheese", 2)
p remove_item("carrots", shopping_list)
p update_item("pizza", 5, shopping_list)
p print_list(shopping_list)


