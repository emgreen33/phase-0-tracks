# require gems
require 'sinatra'
require 'sqlite3'

db = SQLite3::Database.new("students.db")
db.results_as_hash = true

# write a basic GET route
# add a query parameter
# GET / (the home directory is /)
#localhost.8888/?name=Jen&age=35
# get '/' do
#   "#{params[:name]} is #{params[:age]} years old."
# end

# write a GET route with
# route parameters
#localhost.888/?about/Jen
get '/about/:person' do
  person = params[:person]
  "#{person} is a programmer, and #{person} is learning Sinatra."
end
#localhost.888/?Romeo/loves/Juliet
get '/:person_1/loves/:person_2' do
  "#{params[:person_1]} loves #{params[:person_2]}"
end

# write a GET route that retrieves
# all student data
get '/students' do
  students = db.execute("SELECT * FROM students")
  response = ""
  students.each do |student|
    response << "ID: #{student['id']}<br>"
    response << "Name: #{student['name']}<br>"
    response << "Age: #{student['age']}<br>"
    response << "Campus: #{student['campus']}<br><br>"
  end
  response
end

# write a GET route that retrieves
# a particular student

get '/students/:id' do
  student = db.execute("SELECT * FROM students WHERE id=?", [params[:id]])[0]
  student.to_s
end

#Release 0: Add Routes
#write a /contact route that displays an address (you can make up the address).
get '/contact/:address' do
  address = params[:address]
  "Email address is #{address}"
end
#http://localhost:9393/contact/greenemily33@gmail.com


#A /great_job route that can take a person's name as a query parameter (not a route parameter) and say "Good job, [person's name]!". If the query parameter is not present, the route simply says "Good job!"
get '/great_job' do
  name = params[:name]
  if name
    "Good job, #{name}!"
  else
    "Good job!"
  end
end
#http://localhost:9393/great_job
#http://localhost:9393/great_job?name=Emily

# write a route that uses route parameters to add two numbers and respond with the result. The data types are tricky here -- when will the data need to be (or arrive as) a string?
get '/:num_1/plus/:num_2' do
  result = ""
  answer= (params[:num_1]).to_i + (params[:num_2]).to_i
  result << answer.to_s
end
#http://localhost:9393/5/plus/1


#Optional bonus: Make a route that allows the user to search the database in some way -- maybe for students who have a certain first name, or some other attribute. If you like, you can simply modify the home page to take a query parameter, and filter the students displayed if a query parameter is present.
get '/student/:age' do
  student = db.execute("SELECT name FROM students WHERE age=?", [params[:age]])[0]
  student[0].to_s
end

#http://localhost:9393/student/77
#Herminio Moore II


#Release 1: Research on your own
# Is Sinatra the only web app library in Ruby? What are some others?
# Rack 'n' Alternatives • Ruby on Rails • Sinatra • Volt • Async Web (Socket) Frameworks • Web Service Frameworks • Micro Framework Alternatives • "Full Stack" Macro Framework Alternatives • More / Misc Frameworks • Meta

# Are SQLite and the sqlite3 gem your only options for using a database with Sinatra? What are some others?
# Heroku, Datamapper

# What is meant by the term web stack?
# It refers to the components or technologies/languages/operating sytems/etc used to build a web site. For instance the "LAMP" stack is: Linux, Apache, MySQL, PHP