class Santa
    attr_reader :ethnicity, :age
    attr_accessor :gender

    def initialize(gender, ethnicity)
        puts "Initializing Santa instance..."
        @gender = gender
        @ethnicity = ethnicity
        @reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
        @age = 0
    end

    def celebrate_birthday
        @age += 1
    end

    def get_mad_at(name)
        @reindeer_ranking.delete(name)
        @reindeer_ranking << name
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
end

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
santa.get_mad_at("Dasher")
santa.about

#Should return:
# Initializing Santa instance...
# Gender: female
# Ethnicity: white
# Reindeer ranking: ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
# Age: 0
# Gender: male
# Ethnicity: white
# Reindeer ranking: ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
# Age: 0