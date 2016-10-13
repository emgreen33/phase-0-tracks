require 'sqlite3'
require 'faker'

#GAME CLASS AND DATABASE

db = SQLite3::Database.new("database.db")

create_table_people = <<-SQL
    CREATE TABLE IF NOT EXISTS game(
        id INTEGER PRIMARY KEY,
        name VARCHAR(250),
        age INT
    )
SQL

#creates a game table if there isn't one already
db.execute(create_table_people)

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

def create_person(db, name, age)
    db.execute("INSERT INTO game(name, age) VALUES (?,?)", [name, age]
        )
end

# Make some players
# 10.times do
#     create_person(db, Faker::Name.name, rand(10..20))
# end

table_data = db.execute("SELECT name, age FROM game")

people = []

table_data.each do | name, age |
    people << Person.new(name, age)
end

people.each do | person |
    puts person.print
end

puts "=================="
puts "UPDATED LIST:"
puts "=================="
# Change their age
people.each do | person |
    person.age += rand(1..25)
end

people.each do | person |
    puts person.print
end

def update(db, name, age)
    query = "UPDATE game SET age =#{age} WHERE name=\"#{name}\""
    db.execute(query)
end

people.each do |person|
    table_data << person.update_table
end

# p table_data

table_data.each do | name, age |
    update(db,name,age)
end


