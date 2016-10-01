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

class Hangman
    attr_reader :word, :guesses_left

    def initialize(word)
        @word = word
        @blank_lines = ("_" * word.length).split("")
        @guesses_left = word.length
        @word_letters = @word.split("")
        @guessed_letters = []
    end

    def good_letter(letter)
        if letter =~ /\d/
            return "Please enter a valid letter."
        elsif @guessed_letters.include?(letter)
            return "You already guessed that letter."
        else
            @guessed_letters << letter unless @word.count(letter) > 1
            return true
        end
    end

    def check(letter)
        if good_letter(letter) == true
            p in_word?(letter)
        else
            p good_letter(letter)
        end
    end

    def in_word?(letter)
        if @word.include?(letter)
            fill_blank(letter)
            return "Good guess!"
        else
            guesses_reduced
            return "Not in word."
        end
    end

    def fill_blank(letter)
        @word.length.times do | index |
            if @word_letters[index] == letter
                @blank_lines[index] = letter
            end
        end
        @blank_lines.join("")
    end

    def guesses_reduced
        @guesses_left -= 1
    end

    def blank_lines
        @blank_lines.join("")
    end

    def wins_game?
        @blank_lines.join("") == @word
    end
end

# ----------------------------------------------------------------------------------------------------------------------------------------
# Driver Code User Interface
# ----------------------------------------------------------------------------------------------------------------------------------------
# Ask Player 1 for the word:

puts "Welcome to hangman! Player One please enter the word to be guessed: "
word = gets.chomp.downcase
new_game = Hangman.new(word)

# Ask Player 2 to guess the letters of the word:
while true
    until new_game.wins_game? || new_game.guesses_left == 0
        puts "#{new_game.blank_lines.center(23)}"
        puts "Remaining guesses left: #{new_game.guesses_left}"
        puts "Enter a letter to guess: "
        letter = gets.chomp.downcase
        new_game.check(letter)
        if new_game.wins_game?
            puts "Congratulations! You won with #{new_game.guesses_left} left!"
            false
        elsif !new_game.wins_game? && new_game.guesses_left == 0
            puts "Boo, you suck... Try again next time."
            false
        end
    end
    break
end
