

class Hangman
#     attr_reader :word, :blank_lines, :guesses_left, :letter

#     def initialize(word)
#         @word = word
#         @blank_lines = ("_" * word.length).split("")
#         @guesses_left = word.length
#         @word_letters = @word.split("")
#         @guessed_letters = []
#     end

    def good_letter(letter)
        if letter =~ /\d/
            false
        else
            letter
        end
    end

    def check(letter, word)
        if word.include?(letter)
            true
        else
            false
        end
    end

    def wins_game?(blank_lines, word)
        blank_lines.join("") == word
    end
end

