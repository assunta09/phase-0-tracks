# design a class called summer
class Summer
	# the class has the following attributes:
		# - heat: integer
		# - weather: string
		# - clothing guide: string
	attr_reader
	attr_accessor :felt_heat, :weather_2016
	# initialize the class
	def initialize(clothing_guide_2016, weather_2016)
		puts "Initializing the Summer Class"
		#making the variables accessible within the class:
		@clothing_guide_2016 = clothing_guide_2016
		@weather_2016 = weather_2016
	end
	# the class has three methods
		# setter methods
			# - takes the heat and tells the heat feels is about 10 degree hotter than it actually is
	def felt_heat=(heat_random)
		@felt_heat = heat_random + 10
		puts "The heat you feel today is #{@felt_heat} degee celsius"
	end
			# - tells the user the weather and gives advise on what to wear
	def wearables
		if @weather_2016 == "sunny" || "dry and sunny" 
			puts "Today the weather is #{@weather_2016} it would be best to wear #{@clothing_guide_2016}!!"
		elsif  @weather_2016 == "windy" || "cloudy"
			puts "Today the weather is #{@weather_2016} it would be best to wear #{@clothing_guide_2016}!!"
		else
			puts "Today the weather is #{@weather_2016} we would advise you to wear #{@clothing_guide_2016}"
		end
	end
		# normal method
			# - tells the user way to stay
	def where_to_stay(place)
		puts "We would advise you to #{place}!"
	end
end

# weather variables in an array
weather = ["sunny", "cloudy", "rainy", "windy", "dry"]
# pull a random weather from the sample
weather_2016 = weather.sample
# hash with recommendations on what to wear in each weather
clothing_guide = {:sunny => "shorts and t-shirt", :cloudy => "dress", :rainy => "anything water-proof", :windy => "wind-jacket", :dry =>"as little as possible!!" }
# depending on the weather extract the right recommendation for clothing
clothing_guide_2016 = clothing_guide[weather_2016.to_sym]

#initialize the summer class
summer_2016 = Summer.new(clothing_guide_2016, weather_2016)
#randomly pick a heat and assign it to variable in class
heat_random = Random.rand(30)
summer_2016.felt_heat = heat_random
summer_2016.wearables

# places to stay in an array + picked at random. Then fed into the class.
place = ["stay in a house", "stay inside", "leave the country", "go to Sibira", "stay in the pool"]
place_rand = place.sample
summer_2016.where_to_stay(place_rand)