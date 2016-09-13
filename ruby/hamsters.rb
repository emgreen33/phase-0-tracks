puts  "What is your hamsters name?"
hamster_name = gets.chomp

puts "From levels 1 - 10 how squeaky is?"
noise_level = gets.chomp.to_i

puts "What color fur?"
color_fur = gets.chomp

puts "Is your hamster friendly? (y/n)"
friendly = gets.chomp

puts "How old is your hamster?"
age = gets.chomp

if age == ""
    age = nil
else
    age = age.to_i
end
