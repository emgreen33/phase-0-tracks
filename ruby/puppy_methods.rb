#Release 0
class Puppy
    def initialize
        puts "Initializing new puppy instance ..."
    end

    def fetch(toy)
        puts "I brought back the #{toy}!"
        toy
    end

    def speak(num)
        num.times { | i | puts "Woof!"}
    end

    def roll_over
        puts "*rolls over*"
    end

    def dog_years(years)
        dog_years = years * 7
        puts "Your dog is #{dog_years} years old"
        dog_years
    end

    def sit
        puts "*sits down*"
    end

end

toby = Puppy.new
p toby.fetch("ball")
toby.speak(3)
toby.roll_over
toby.dog_years(4)
toby.sit

# Release 2

class Bartender

    def initialize
        puts "Creating a new bartender..."
    end

    def check_id(age)
        if age >= 21
            puts "Hello, what can I get you?"
        else
            puts "GET OUT."
        end
    end

    def shake(cocktail)
        puts "*shakes #{cocktail}*"
    end

end

bartender_array = []
50.times do |i|
    bartender_array << Bartender.new
end

bartender_array.each do |bartender|
    bartender.check_id(rand(0..70))
    bartender.shake("manhattan")
end