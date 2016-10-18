require 'sqlite3'
require 'faker'


def create_table_people
    "CREATE TABLE IF NOT EXISTS game( id INTEGER PRIMARY KEY, name VARCHAR(250), age INT, score INT)"
end

#method to create players
def create_person(db, name, age, score)
    db.execute("INSERT INTO game(name, age, score) VALUES (?,?,?)", [name, age, score]
        )
end

#make instances of players
def store_data
    "SELECT name, age, score FROM game"
end

#method to update database
def update(db, name, age, score)
    query = "UPDATE game SET age =#{age} WHERE name=\"#{name}\""
    db.execute(query)
end

def delete_person(db, name, age, score)
    query = "DELETE FROM game WHERE age<=21"
    db.execute(query)
end

def highest_scorers(db, name, age, score)
    query = "SELECT name, score FROM game WHERE score >=30"
    db.execute(query)
end