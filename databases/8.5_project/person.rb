class Person
    attr_accessor :age, :score

    def initialize(name, age, score)
        @name = name
        @age = age
        @score = 0
    end

    def print
        "Player Name: #{@name},  Age: #{@age}, Score: #{@score}"
    end

    def update_table
        [@name, @age, @score]
    end

end