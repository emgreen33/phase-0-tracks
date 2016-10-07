# Virus Predictor

# I worked on this challenge [by myself, with: Zilvinas Peciura ].
# We spent [1.5] hours on this challenge

#Release 1
# EXPLANATION OF require_relative
# Require relative refers to data and files stored in the same directory that you want to import
# Require needs a bigger specification of location of the file you want access, this doesn't mean importing ruby modules

require_relative 'state_data'

class VirusPredictor
# Iniitalizes each class instance by taking in state name, population density and population numbers
  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end

  # runs the predicted deaths and speed of spread methods using population density, population and state name, main function that is called
  def virus_effects
    puts "#{@state} will lose #{predicted_deaths} people in this outbreak and will spread across the state in #{speed_of_spread} months.\n\n"
  end
  #It protects from user modifing methods and is only able to be accessed within the scope of the class itself. Other methods can call upon them within the class, but they are not directly accessible outside.
  private

  # Returns predicted deaths for state dependent on the states population density
  # Takes in populationd ensity and popuation sate as parameters, this is stored as the local variable number of deaths.

  def predicted_deaths
    # predicted deaths is solely based on population density
     if @population_density >= 200
      number_of_deaths = (@population * 0.4).floor
    elsif @population_density < 50
      number_of_deaths = (@population * 0.05).floor
    else
      multiplier = (@population_density/50).floor
      number_of_deaths = (@population * (multiplier * 0.1)).floor
    end
  end

  # Returns and stores the speed of spread as a local variable in the method which is called upon in above methods
  def speed_of_spread
    if @population_density >= 200
      speed = 0.5
    else @population_density < 200
      multiplier = (@population_density/50).floor
      speed = 2.5 - (multiplier * 0.5)
    end
  end
end

#=======================================================================

# DRIVER CODE
 # initialize VirusPredictor for each state

STATE_DATA.each do | state, states_data |
  new_states= VirusPredictor.new(state,states_data[:population_density], states_data[:population])
  new_states.virus_effects
end

alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population])
alabama.virus_effects

jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population])
jersey.virus_effects

california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population])
california.virus_effects

alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population])
alaska.virus_effects


#=======================================================================
# Reflection Section
# What are the differences between the two different hash syntaxes shown in the state_data file? Nested hashes use symbols instead of strings and => to assign values to keys, where as the symbols can condense into one line
# What does require_relative do? How is it different from require? Require relative imports data from specified file saved locally in the same directory, require can import from elsewhere but you have to specify either the direct file route or file path
# What are some ways to iterate through a hash? You can iterate through a hash using each statements and calling upon the key values, these instances can be printed out or stored in data structures
# When refactoring virus_effects, what stood out to you about the variables, if anything? The variables used in virus effects were declared instance variables in the initialize method, they were unneccessary parameters as they were accessible already in the class
# What concept did you most solidify in this challenge? the difference between require relative and require was solidified to me, originally I thought require meant you were calling Ruby classes/libraries. Also, I learnt that I can sometimes *over* refactor and there is a line to walk between making it too complicated for simplicity