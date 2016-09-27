#Release 1: Write a Simple Module
# -----------------------------------------------------------------
# module Shout
#     def self.yell_angrily(words)
#         words + "!!!" + " :("
#     end

#     def self.yelling_happily(words)
#         words + "!!!" + " :)"
#     end
# end

# p Shout.yell_angrily("hey there")
# p Shout.yelling_happily("oh hi")

# -----------------------------------------------------------------
#Release 3: Convert a Standalone Module to a Mixin
# -----------------------------------------------------------------
module Shout
    def yell_angrily(words)
        words + "!!!" + " :("
    end

    def yelling_happily(words)
        words + "!!" " :)"
    end
end

class Teacher
    include Shout
end

class Mother
    include Shout
end

mother = Mother.new
p mother.yelling_happily("You graduated?")

teacher = Teacher.new
p teacher.yell_angrily("You didn't finish your assignment?")
