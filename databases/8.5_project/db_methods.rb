require 'sqlite3'
require 'faker'


def create_table_people
    "CREATE TABLE IF NOT EXISTS game( id INTEGER PRIMARY KEY, name VARCHAR(250), age INT)"
end

#method to create players
def create_person(db, name, age)
    db.execute("INSERT INTO game(name, age) VALUES (?,?)", [name, age]
        )
end

#make instances of players
def store_data
    "SELECT name, age FROM game"
end

#method to update database
def update(db, name, age)
    query = "UPDATE game SET age =#{age} WHERE name=\"#{name}\""
    db.execute(query)
end