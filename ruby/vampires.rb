require 'date'

puts "How many employees will be processed?"
employees = gets.chomp.to_i
i = 1
until i > employees
    result = nil
    puts "What is your name?"
    name = gets.chomp
    if name == "Drake Cula" || name == "Tu Fang"
        result = "Definitely a vampire."
    end
    puts "How old are you?"
    age = gets.chomp.to_i
    puts "What year were you born?"
    year = gets.chomp.to_i
    # if (Date.now - year) - age != 0
    #     liar = true
    # end
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
            result = "Probably a vampire." unless result != nil
            break
        end
    end
    unless result != nil
        if (age == (2016 - year)) && (order == "yes" || insurance == "yes")
         # if liar && (order == "yes" || insurance == "yes")
            result = "Probably not a vampire."
        elsif (age != (2016 - year))
         # elsif !liar
            if (order == "no" || insurance == "no") && !(order == "no" && insurance == "no")
                result = "Probably a vampire."
            elsif order == "no" && insurance == "no"
                result = "Almost certainly a vampire."
            end
        else
            result = "Results inconclusive."
        end
    end
    puts result
    i += 1
end
puts "Actually, never mind! What do these questions have to do with anything? Let's all be friends."

