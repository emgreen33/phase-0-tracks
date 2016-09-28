# Pseudocode a class for word-guessing game:
# - Game is given a word to be guessed
# - An array of blank lines is created equal to the length of the word
# - Number of guesses is equal to the length of the word
# - A letter is guessed
#         - If the letter is a single letter
#                 - if the letter hasn't already been guessed add the letter to a list of guessed letters
#                         - if the given word includes the letter
#                                 - replace all instances in the blank line word with the letter
#                                 - tell the user it was a good guess
#                         - decrease guesses left by 1
# - The game is won if the guessed letter word is the same as the given word

