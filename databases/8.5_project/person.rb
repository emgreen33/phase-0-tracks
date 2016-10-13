class Person
    attr_accessor :age

    def initialize(name, age)
        @name = name
        @age = age
    end

    def print
        "Player Name: #{@name},  Age: #{@age}"
    end

    def update_table
        [@name, @age]
    end

end