class Santa
    def initialize(gender, ethnicity)
        puts "Initializing Santa instance..."
        @gender = gender
        @ethnicity = ethnicity
        @reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
        @age = 0
    end

    def speak
        puts "Ho, ho, ho! Haaaaappy holidays!"
    end

    def eat_milk_and_cookies(cookie)
        puts "That was a good #{cookie}!"
    end

    def about
        puts "Gender: #{@gender}"
        puts "Ethnicity: #{@ethnicity}"
        puts "Reindeer ranking: #{@reindeer_ranking}"
        puts "Age: #{@age}"
    end

    #attribute-changing methods for attributes
    def celebrate_birthday
        @age += 1
    end

    def get_mad_at(name)
        @reindeer_ranking.delete(name).push(name)
    end

    #setter-method: makes something writeable
    def gender=(new_gender)
        @gender = new_gender
    end

    #getter-method: makes something readable
    def age
        @age
    end

    def ethnicity
        @ethnicity
    end
end

# santa= Santa.new("female", "white")
# santa.speak
# santa.eat_milk_and_cookies("tim tam")
# santa.about
# puts "#{santa.age} is something"

# santas = []
# genders = ["female", "male", "N/A", "male", "female", "N/A"]
# ethnicities = ["white", "black", "latino", "N/A", "N/A", "black"]
# genders.length.times do | i |
#     santas << Santa.new(genders[i], ethnicities[i])
# end

santa= Santa.new("female", "white")
santa.about
santa.gender = "male"
santa.about
