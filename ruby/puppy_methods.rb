#Release 0
class Puppy

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
