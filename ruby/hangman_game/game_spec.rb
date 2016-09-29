# Pseudocode a class for word-guessing game
# ----------------------------------------------------------------------------------------------------------------------------------------
# - Game is given a word to be guessed
# - An array of blank lines is created equal to the length of the word as well as a list of letters in the word
# - Number of guesses is equal to the length of the word
# - A letter is guessed: check if it's a valid letter (helper method)
#           - If the letter is a number return an error
#           - Elsif the letter has already been guessed return an error
#           - Else add the guessed letter to a list of guessed letters and decrease attempts left by 1
# - Check if the good letter is in the list of letters in the word
#           - If the letter is in the word
#                   - replace all instances of the letter in the blank line word
# - Check if the player has won the game by comparing the blank word with the given word
#----------------------------------------------------------------------------------------------------------------------------------------

require_relative 'game'

describe Hangman do
    let(:game) { Hangman.new }

    it "checks if the letter guessed is valid" do
        expect(game.good_letter("b")).to eq "b"
    end

    it "checks if a number is guessed an error is given" do
        expect(game.good_letter("9")).to eq false
    end

    it "checks if a letter is in a word" do
        expect(game.check("a", "abc")).to eq true
    end

    it "checks if a player has won the game" do
        expect(game.wins_game?(["a", "b"], "ab")).to eq true
    end
end
