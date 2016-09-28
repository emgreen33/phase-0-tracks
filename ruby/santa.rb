#Release 0, 1, 2, 3
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

santas = []
genders = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]
ethnicities = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "N/A"]
genders.length.times do | i |
    santas << Santa.new(genders[i], ethnicities[i])
end

p santas[1..5]
p santas[4].age
p santas[3].gender
p santas[2].ethnicity


#Release 4: Build Many, Many Santas
index = 0
while index < 100
    santas = Santa.new(genders.sample, ethnicities.sample)
    santas.age = rand(0..140)
    santas.about
    index += 1
end
