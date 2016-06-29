class Santa
	attr_reader :ethnicity, :gender
	attr_accessor :ranking, :celebrate_birthday 
	def initialize(gender, ethnicity)
		#puts "Initializing Santa instance"
		@gender = gender
		@ethnicity = ethnicity
	end
	# setter method for gender - allows the gender to be reassigned from outside the class
	#def gender=(gender)
	#	@gender
	#end

	def speak
		puts "Ho, ho, ho! Haaaapy holidays!"
	end

	def eat_milk_and_cookies(cookie)
		puts "That was a good #{cookie}"
	end

	#define instance variable celebrate birthday
	#def celebrate_birthday
	#	@celebrate_birthday
	#end
	#setter method for the birthday 
	def celebrate_birthday=(age)
		@celebrate_birthday = age + 1
		puts "Santa is #{celebrate_birthday} years old"
	end

	# define instance variable for ranking
	#def ranking
	#	@reindeer_ranking
	#end
	# setter method
	def ranking=(reindeer_ranking)
		@reindeer_ranking = reindeer_ranking
	end
	#whenever santa is mad at a reindeer, move it to the end of the ranking
	def get_mad_at(name)
		index_name = @reindeer_ranking.index(name)
		@reindeer_ranking.insert(-1, @reindeer_ranking.delete_at(index_name))
		p @reindeer_ranking
	end
	#getter code for age
	#def age
	#	@celebrate_birthday
	#end
	#getter code for ethnicity
	#def ethnicity
	#	@ethnicity
	#end

end



#reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
#age = 0
#test = Santa.new("female", "black")
#test.celebrate_birthday = age
#test.ranking = reindeer_ranking
#test.get_mad_at("Dancer")
#test.speak
#test.eat_milk_and_cookies("Snickerdoodle")

#test if we can access the variables specified in the getter methods
#puts "Santas age is #{test.celebrate_birthday}"
#puts "Santa is #{test.ethnicity}"


#create new array while looping to other arrays through the Santa class:
#santas = []
example_genders = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]
example_ethnicities = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A"]

#example_genders.length.times do |i|
# santas << Santa.new(example_genders[i], example_ethnicities[i])
#end

#p santas

# Built a lot of santas

counter = 0
while counter < 5
	gender = example_genders.sample
	ethnicity = example_ethnicities.sample
	santa_builder = Santa.new(gender, ethnicity)
	age = Random.rand(140)
	santa_builder.celebrate_birthday = age
	counter += 1
	puts "Santa is #{santa_builder.gender} and #{santa_builder.ethnicity}"
end





