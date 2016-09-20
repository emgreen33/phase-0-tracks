#first we want to split the string of names into an array of words
#then we want to swap the first and last names
#then we want to split the array of names into an array of letters
#then we have to have two arrays: 1) consonants 2)vowels
# if the letter is in the consonant array, use the letter as the index of the consonant array and add one to it
#if the letter is in the vowel array, we use the letter as the index of the vowel array and add one to it
#increase the index value by 1 until the while loop ends
# join the letter array
#capitalize the letter string and return it
#if the letter is z we have to hard code it to be an a


def alias_name(name)
    real_names = name.downcase.split(" ")
    real_names[0], real_names[-1] = real_names[-1], real_names[0]
    p real_names
    letters = real_names.join(" ").split("")
    p letters

    index = 0
    alphabet = ("a".."z").to_a
    vowels = ["a", "e", "i", "o", "u"]
    consonants = alphabet - vowels

    while index < letters.length
        if letters[index] == "z"
            letters[index] = "a"
        elsif vowels.include?(letters[index])
            puts "there is a vowel"
            letters[index] = vowels[vowels.index(letters[index])+1]
        elsif consonants.include?(letters[index])
            puts "there is a consonant"
            letters[index] = consonants[consonants.index(letters[index])+1]
        end
        index += 1
    end
    new_names = letters.join("")
end


p alias_name("Adam Greenz")
p alias_name("Felicia Torres")


# def next_vowel(letter)
#     vowels =