require_relative 'db_methods.rb'
require_relative 'person.rb'

db = SQLite3::Database.new("scoringGame.db")

#creates a game table if there isn't one already
db.execute(create_table_people)

# Make some players: comment out
# 5.times do
#     create_person(db, Faker::Name.name, rand(10..20), 0)
# end

table_data = db.execute(store_data)

people = []

table_data.each do | name, age, score |
    people << Person.new(name, age, score)
end

#print out each player
people.each do | person |
    puts person.print
end

puts "=================="
puts "UPDATED LIST:"
puts "=================="

# Change the players age by random amount
people.each do | person |
    person.age += rand(1..25)
end

#print each player with updated age
people.each do | person |
    puts person.print
end

#update table data
people.each do |person|
    table_data << person.update_table
end

#update database with new table data
table_data.each do | name, age, score |
    update(db,name,age,score)
end


