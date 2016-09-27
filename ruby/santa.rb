#Release 0, 1, 2, 3
# -----------------------------------------------------------------------------------
class Santa
    attr_reader :ethnicity
    attr_accessor :gender, :age

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
# -----------------------------------------------------------------------------------
#Add initializations as driver code, then test work by running the program from command line:
# santas = []
# genders = ["female", "male", "N/A", "male", "female", "N/A"]
# ethnicities = ["white", "black", "latino", "N/A", "N/A", "black"]
# genders.length.times do | i |
#     santas << Santa.new(genders[i], ethnicities[i])
# end


#Driver Code
# santa= Santa.new("female", "white")
# santa.about
# santa.gender = "male"
# santa.about
# santa.get_mad_at("Dasher")
# santa.about
# santa.celebrate_birthday
# santa.about

# -----------------------------------------------------------------------------------

#Release 4: Build Many, Many Santas
# - declare two arrays of example genders and example ethnicities
# - use a while loop to generate a large number of santas
# - assign random genders and ethnicities to each santa and set age to random number between 0 and 140
# - print out the attributes of each Santa (using about)

example_genders = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]
example_ethnicities = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "N/A"]
index = 0
while index < 100
    santas = Santa.new(example_genders.sample, example_ethnicities.sample)
    santas.age = rand(0..140)
    santas.about
    index += 1
end
