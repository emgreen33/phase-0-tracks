#Release 0

puts "How many employees will be processed?"
employees = gets.chomp.to_i
i = 1
until i > employees
    result = ""
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
    puts "Name any allergies you have one at a time"
    while true
        allergies = gets.chomp
        if allergies == "done"
            break
        elsif allergies == "sunshine"
            result = "Probably a vampire."
            break
        end
    end
    unless result == "Probably a vampire"
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
    end
    puts result
    i += 1
end
puts "Actually, never mind! What do these questions have to do with anything? Let's all be friends."


#Release 1,2,3,4,5