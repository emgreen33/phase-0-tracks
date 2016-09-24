#Interior Design Questionaire
# - Ask user for their name, age, no. of children, favorite colors, if they have a pool
# - save their answers as key: value pairs in a hash
# - print the hash when all questions answered
#------------------------------------------------------------------------------------------------------------------------------
puts "What is your clients name?"
name = gets.chomp
puts "What is your clients address?"
address = gets.chomp
puts "How old are they?"
age = gets.chomp.to_i
puts "How many children do they have?"
kids = gets.chomp.to_i
puts "What are their favourite colors?"
colors = gets.chomp.split(" ")
puts "Do they have a pool?"
pool = gets.chomp.capitalize
puts "What are their ideal floor materials? i.e. hardwood, marble etc"
flooring = gets.chomp.split(" ")

client = {
    name: name,
    address: address,
    age: age,
    kids: kids,
    colors: colors,
    pool: pool,
    flooring: flooring
}

p client

#------------------------------------------------------------------------------------------------------------------------------
# User Interface
# - ask user if they want to update any key? ask for the key and the new value until they say "none"
# - if the current value of the key is an array,
#           - if it is ask the user which value in the current array they want to update
#           - replace (substitute) the old value with the new answer
# - else ask the user what the new value should be
#           - if the value contains digits and no letters return it as an integer
#           - else if the value contains numbers and/or letters keep it as a string
# - store the new value in the clients hash
# - ask if they want to update another, break if they respond no
# - print out the updated hash
#------------------------------------------------------------------------------------------------------------------------------
puts "Do you want to update a key?"
answer = gets.chomp
until answer.downcase == "none"
    puts "What key would you like to update?"
    key = gets.chomp
    if client[(key.to_sym)].is_a?(Array)
        puts "What value do you want to update?"
        old_value = gets.chomp
        puts "What is the new answer?"
        new_answer = gets.chomp
        new_value = client[(key.to_sym)].join(",").gsub(old_value, new_answer).split(",")
    else
        puts "What is the corrent answer?"
        new_value = gets.chomp
        if new_value =~ /\d/ && new_value !~ /[a-zA-Z]/
            new_value = new_value.to_i
        elsif new_value =~ /[a-zA-Z0-9]/
            new_value
        end
    end
        client[(key.to_sym)] = new_value
        puts "Would you like to update another?"
        answer = gets.chomp
        if answer.downcase == "no"
        break
        end
end
p client

