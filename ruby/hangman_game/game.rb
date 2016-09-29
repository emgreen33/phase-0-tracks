

class Hangman
    attr_reader :word, :blank_lines, :guesses_left

    def initialize(word)
        @word = word
        @blank_lines = ("_" * word.length).split("")
        @guesses_left = word.length
        @word_letters = @word.split("")
        @guessed_letters = []
    end

    def good_letter(letter)
        if letter =~ /\d/
            puts "Please enter a valid letter"
        elsif @guessed_letters.include?(letter)
            puts "You already guessed that letter"
        else
            @guessed_letters << letter
            @guesses_left -= 1
            letter
        end
    end

    def check(letter)
        letter = good_letter(letter)
        @word.length.times do | index |
            if @word_letters[index] == letter
                @blank_lines[index] = letter
            end
        end
    end

    def wins_game?(blank_lines, word)
        @blank_lines.join("") == @word
    end
end


# Driver Code User Interface
puts "Welcome to hangman! Player One please enter the word to be guessed: "
word = gets.chomp
new_game = Hangman.new(word)


