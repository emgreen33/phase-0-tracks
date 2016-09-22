# Alias Manager Prgoram
# - define a method to make an alias name that takes a name string as a paramater
# - split the string of names into an array of words
#         - swap the first and last names (helper method)
#         - split the array of names into an array of letters
# - create two arrays: 1) consonants 2)vowels
# - iterate through the array of letters and check whether it's a consonant, vowel, or a space
#       - if the letter is in the consonant array (helper method)
#         #     - if the letter is z, it becomes b
#         #     - else use the letter as the index of the consonant array and add one to it
#       - elsif the letter is in the vowel array (helper method)
#               - if the letter is u it becomes a
#               - else we use the letter as the index of the vowel array and add one to it
#       - else it must be a space so leave it unchanged
# - join the letter array into a string
# - capitalize the letter string (helper method) and return it
#-----------------------------------------------------------------------------------------------------------------------

def swap_names(name)
    real_names = name.downcase.split(" ")
    real_names[0], real_names[-1] = real_names[-1], real_names[0]
    real_names.join(" ")
end

def next_vowel(letter)
    vowels = ["a", "e", "i", "o", "u"]
    if letter == "u"
        letter = "a"
    elsif vowels.include?(letter)
        letter = vowels[vowels.index(letter)+1]
    end
end

def next_consonant(letter)
    alphabet = ("a".."z").to_a
    vowels = ["a", "e", "i", "o", "u"]
    consonants = alphabet - vowels
    if letter == "z"
        letter = "b"
    elsif consonants.include?(letter)
        letter = consonants[consonants.index(letter)+1]
    end
end

def capitalize_name(name)
    name.split(" ").map { |name| name.capitalize}.join(" ")
end

def alias_name(name)
    letters = swap_names(name).split("")
    index = 0
    alphabet = ("a".."z").to_a
    vowels = ["a", "e", "i", "o", "u"]
    consonants = alphabet - vowels
     new_letters = letters.map do |letter|
        if vowels.include?(letter)
            letter = next_vowel(letter)
        elsif consonants.include?(letter)
            letter = next_consonant(letter)
        else
            letter
        end
    end
    new_names = new_letters.join("")
    capitalize_name(new_names)
end

#------------------------------------------------------------------------------------------------------------------------
# Provide user interface and store aliases
# - Ask user to enter a name and return this input as an alias name by running the method on it
# - Exit the loop asking them for the name when they return 'quit'
        # - if the name includes numbers return an error but keep asking
        # - else store the name in a hash
# - Iterate through the hash and print all the name key:value pairs using the key:value pairs
#-------------------------------------------------------------------------------------------------------------------------

name_hash = Hash.new
puts "Enter names to change, when you are done type quit."
while true
    name = gets.chomp
    if name =~ /\d/
        puts "You entered an invalid name. Please only use letters."
    elsif name == "quit"
        break
    else
        fake_name = alias_name(name)
        name_hash.store(capitalize_name(name).to_sym, fake_name)
    end
end

name_hash.each {| key, value | puts "#{key} is also knowns as #{value}"}

#-------------------------------------------------------------------------------------------------------------------------
# Enter names to change, when you are done type quit.
# Zu zU
# Felicia Torres
# 9
# You entered an invalid name. Please only use letters.
# quit
# Zu Zu is also knowns as Ba Ba
# Felicia Torres is also knowns as Vussit Gimodoe
