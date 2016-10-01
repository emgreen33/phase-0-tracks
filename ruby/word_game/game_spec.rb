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
# ----------------------------------------------------------------------------------------------------------------------------------------

require_relative 'game'

describe Hangman do

    let(:game) { Hangman.new("bat") }

    it "checks if the letter guessed is valid, a number, or already guessed" do
        game.good_letter("b")
        expect(game.good_letter("9")).to eq "Please enter a valid letter."
        expect(game.good_letter("b")). to eq "You already guessed that letter."
    end

    it "calls upon a helper method to check the guessed letter" do
        expect(game.check("b")).to eq "Good guess!"
        expect(game.check("c")).to eq "Not in word."
        expect(game.check("9")).to eq "Please enter a valid letter."
    end

    it "checks if a letter is in a word" do
        expect(game.in_word?("m")).to eq "Not in word."
        expect(game.in_word?("a")).to eq "Good guess!"
    end

    it "checks the lines are replaced with correct letters and not replaced with incorrect letters" do
        game.fill_blank("x")
        game.fill_blank("b")
        game.fill_blank("a")
        expect(game.fill_blank("t")).to eq "bat"
    end

      it "checks if the game was successfully won" do
        game.fill_blank("b")
        game.fill_blank("a")
        game.fill_blank("t")
        expect(game.wins_game?).to eq true
    end

    it "checks that game is reduced by 1" do
        game.guesses_reduced
        expect(game.guesses_reduced).to eq 1
    end

    it "checks that blank line array joins together" do
        expect(game.blank_lines).to eq "___"
    end

end