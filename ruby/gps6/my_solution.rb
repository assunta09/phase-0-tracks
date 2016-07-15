# Virus Predictor

# I worked on this challenge [by myself, with: ].
# We spent [#] hours on this challenge.

# EXPLANATION OF require_relative
#
#
require_relative 'state_data'

class VirusPredictor
  # The initialize method, passes the attributes into every new instance of the class.
  # It also defines the scope of the variables
  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end

  # This method calls the other two methods and passes in the arguments 
  def virus_effects
    predicted_deaths
    speed_of_spread
  end

  # all methods under the private method are only accessible from inside the class (i.e. they can only be called within the class)
  private

  # The predicted death method takes three arguments. Depending on the first argument 'population density' it calculates the number of deaths by multiplying the popluation with a weighted float
  def predicted_deaths
    # predicted deaths is solely based on population density
    death_factor = if @population_density >= 200
      0.4
    elsif @population_density >= 150
      0.3
    elsif @population_density >= 100
      0.2
    elsif @population_density >= 50
      0.1
    else
      0.05
    end

    number_of_deaths = (@population * death_factor).floor
    print "#{@state} will lose #{number_of_deaths} people in this outbreak"

  end

  # The speed of spread method also looks on the population desitiy. Depending on the hight of the density it calculates the speed of spread
  # The speed of spread is predefined for the different population densities.
  def speed_of_spread #in months
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.
 
    speed = if @population_density >= 200
      0.5
    elsif @population_density >= 150
      1
    elsif @population_density >= 100
      1.5
    elsif @population_density >= 50
      2
    else
      2.5
    end

    puts " and will spread across the state in #{speed} months.\n\n"

  end

end

#=======================================================================

# DRIVER CODE
 # initialize VirusPredictor for each state

STATE_DATA.each do |state_name, state_data|
  state_predictor = VirusPredictor.new(state_name, state_data[:population_density], state_data[:population])
  state_predictor.virus_effects
end

# alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population])
# alabama.virus_effects

# jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population])
# jersey.virus_effects

# california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population])
# california.virus_effects

# alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population])
# alaska.virus_effects


#=======================================================================
# Reflection Section

#require_relative: is a method that takes one argument a string that refers to the filename or the path to the file if it is not in the same folder and imports code from that file
#require: also a method. It takes a library name as argument and imports all methods and modules associated with that library

#Hash types in state_data:
  #  {"key" => value} --> value is assigned with a rocket, key is a string or integer
  #  { key: value} --> key is a symbol, value is assigned by moving the colon to the right side of the symbol-name

#STATE_DATA - is a constant. Constants should not be altered. If you do so Ruby will throw a warning. 
#Scope of STATE_DATA: The scope of a constant depends on where it is defined. In this case since it is required from a different file the scope is global

#Ways to iterate through a hash:
  # 1. hash.each {|key, value| block}
  # 2. for key, value in hash
  #        block
  #    end

#refactoring virus effects: the arguments passed into the method calls were instance variables - so they were usable everywhere in the instance of the class (i.e. we were able to pass them directly into the methods)

# I most solidified the concept of looping through a nested hash


