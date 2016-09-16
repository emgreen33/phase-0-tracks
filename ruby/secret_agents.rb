# Encrypt
# 1. Define an encrypt method which takes a string argument as its parameter
# 2. Initialize index variable counter at integer 0
# 3. While index is less than the length of the string, iterate through string letter by letter and move each letter forward by one
# 4. Add 1 to the index value after each letter is increased
# 5. End the loop when index value is equal to or greater than the string length
# 6. Return the encrypted string

def encrypt(string)
    index = 0
    while index < string.length
        if string[index] == "z"
            string[index] = "a"
        else
            string[index] = string[index].next
        end
        index += 1
    end
    string
end


# Decrypt
# 1. Define a decrypt method which takes a string argument as its parameter
# 2. Initialize index variable counter at integer 0
# 3. Assign the alphabet string to the variable alphabet
# 3. While the index value is less than the length of the string, iterate through the string letter by letter and decrease the value of the letter by one using the alphabets index
# 4. Add 1 to the index value after each letter is decreased
# 5. End the loop when the index value is equal to or greater than the string length
# 6. Return the decrypted string

def decrypt(string)
    index = 0
    alphabet = "abcdefghijklmnopqrstuvwxyz"
    while index < string.length
        string[index] = alphabet[alphabet.index(string[index])-1]
        index += 1
    end
    string
end

p encrypt("abc")
p encrypt("zed")
p decrypt("bcd")
p decrypt("afe")