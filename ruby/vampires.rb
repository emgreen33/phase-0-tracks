#Release 0

puts "How many employees will be processed?"
employees = gets.chomp.to_i

i = 1
until i > employees
    puts "What is your name?"
    name = gets.chomp
    puts "How old are you?"
    age = gets.chomp.to_i
    puts "What year were you born?"
    year = gets.chomp.to_i
    puts "Our company cafeteria serves garlic bread. Should we order some for you?"
    order = gets.chomp
    puts "Would you like to enroll in the company’s health insurance?"
    insurance = gets.chomp
    result = ""
    if (age == (2016 - year)) && (order == "yes" || insurance == "yes") && !(name == "Drake Cula" || name == "Tu Fang")
        result = "Probably not a vampire."
    elsif (age != (2016 - year))
        if (order == "no" || insurance == "no") && !(order == "no" && insurance == "no")
            result = "Probably a vampire."
        elsif order == "no" && insurance == "no"
            result = "Almost certainly a vampire."
        end
    elsif name == "Drake Cula" || name == "Tu Fang"
        result = "Definitely a vampire."
    else
        result = "Results inconclusive."
    end
    p result
    i += 1
end

# puts result
