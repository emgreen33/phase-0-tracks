#Interior Design Questionaire

# - Ask user for their name, age, no. of children, favorite colors, if they have a pool
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

# - save their answers as key: value pairs in a hash
client = {
    name: name,
    address: address,
    age: age,
    kids: kids,
    colors: colors,
    pool: pool,
    flooring: flooring
}

# - print the hash when all questions answered
p client

#- ask user if they want to update any key? ask for the key if they don't say "none"
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

# - print out the updated hash
p client

