#Interior Design Questionaire

# - Ask user for their name, age, no. of children, favorite colors, if they have a pool
puts "What is your clients name?"
name = gets.chomp
puts "How old are they?"
age = gets.chomp.to_i
puts "How many children do they have?"
kids = gets.chomp.to_i
puts "What are their favourite colors?"
color = gets.chomp
colors = color.split(" ")
puts "Do they have a pool?"
pool = gets.chomp

# - save their answers as key: value pairs in a hash
client = {
    name: name,
    age: age,
    kids: kids,
    colors: colors,
    pool: pool
}

# - print the hash when all questions answered
p client

#- ask user if they want to update any key? ask for the key if they don't say "none"

puts "Do you want to update a key?"
answer = gets.chomp
if answer.downcase != "none"
    puts "What key would you like to update?"
    key = gets.chomp
    puts "What is the correct answer?"
    new_value = gets.chomp
    if key == "colors"
        new_value = new_value.split(" ")
    elsif new_value =~ /\d/
        new_value = new_value.to_i
    end
    client[(key.to_sym)] = new_value
end

#print latest version of the hash and exit
p client


