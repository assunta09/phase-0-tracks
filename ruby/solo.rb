# design a class called summer
class Summer
	# the class has the following attributes:
		# - heat: integer
		# - weather: string
		# - clothing guide: string
	attr_reader
	attr_accessor :felt_heat, :weather_2016
	# initialize the class
	def initialize(clothing_guide_2016, weather_2016, input_clothing)
		puts "Initializing the Summer Class"
		#making the variables accessible within the class:
		@clothing_guide_2016 = clothing_guide_2016
		@weather_2016 = weather_2016
		@input_clothing = input_clothing
	end
	# the class has three methods
		# setter methods
			# - takes the heat and tells the heat feels is about 10 degree hotter than it actually is
	def felt_heat=(heat)
		@felt_heat = heat + 10
		puts "The heat you feel today is #{@felt_heat} degree Celsius"
	end
			# - tells the user the weather and gives advise on what to wear
	def wearables
		if @weather_2016 == "sunny" || @weather_2016 == "dry" || @weather_2016 == "windy"|| @weather_2016 == "cloudy" || @weather_2016 == "rainy"
			puts "Your planning to wear #{@input_clothing}. Today the weather is #{@weather_2016} it would be better to wear #{@clothing_guide_2016}!!"
		else
			puts "Puh this is difficult. Wear #{@input_clothing} as you had planned"
		end
	end
		# normal method
			# - tells the user way to stay
	def where_to_stay(place)
		puts "We would advise you to #{place}!"
	end
end


puts "WELCOME!!! - to the DBC daily clothing recommendation tool for summer lovers"
user_input = ""
clothing_guide_user = Hash.new
while user_input != "no"
	#Ask the user for input to run our methods.
	puts "What location are you at?"
	user_location = gets.chomp
	puts "Tell us how many degree Celsius it is in #{user_location}"
	input_heat = gets.to_i
	puts "Thank you, next please tell us what the weather is like in #{user_location}"
	input_weather = gets.chomp
	puts "Last question, what were you planning to wear today?"
	input_clothing = gets.chomp
	puts "Great thank you - these are your clothing recommendations for #{user_location}:"
	
	heat = input_heat
	weather = ["sunny", "cloudy", "rainy", "windy", "dry"]
	if weather.include?(input_weather) == true
		weather_2016 = input_weather
	else
		weather_2016 = "other"
	end
	# hash with recommendations on what to wear in each weather
	clothing_guide = {:sunny => "shorts and t-shirt", :cloudy => "a warm dress", :rainy => "anything water-proof", :windy => "wind-jacket", :dry =>"as little as possible!!" , :other => "difficult"}
	# depending on the weather extract the right recommendation for clothing
	clothing_guide_2016 = clothing_guide[weather_2016.to_sym]

	#call the methods 
	weather_today = Summer.new(clothing_guide_2016, weather_2016, input_clothing)
	weather_today.felt_heat = heat
	weather_today.wearables
	puts "Do you want to checkout clothing recommendations for another location?"
	user_input = gets.chomp

	clothing_guide_user[user_location] = {} 
	clothing_guide_user[user_location][:heat] = heat
	clothing_guide_user[user_location][:heat_felt] = weather_today.felt_heat
	clothing_guide_user[user_location][:weather] = input_weather
	clothing_guide_user[user_location][:clothing_planned] = input_clothing
	clothing_guide_user[user_location][:clothing_recommended] = clothing_guide_2016

end

clothing_guide_user.each do |key, value|
	puts "These are the weather related clothing facts for #{key} today:
It has #{value[:heat]} degrees, but it feels more like #{value[:heat_felt]} degrees
The weather is #{value[:weather]}, which is why we would recommend wearing #{value[:clothing_recommended]} rather than #{value[:clothing_planned]}"
end

# weather variables in an array
#weather = ["sunny", "cloudy", "rainy", "windy", "dry"]
# pull a random weather from the sample
#weather_2016 = weather.sample
# depending on the weather extract the right recommendation for clothing
#clothing_guide_2016 = clothing_guide[weather_2016.to_sym]
#initialize the summer class
#summer_2016 = Summer.new(clothing_guide_2016, weather_2016)
#randomly pick a heat and assign it to variable in class
#heat = Random.rand(30)
#summer_2016.felt_heat = heat
#summer_2016.wearables

# places to stay in an array + picked at random. Then fed into the class.
#place = ["stay in a house", "stay inside", "leave the country", "go to Sibira", "stay in the pool"]
#place_rand = place.sample
#summer_2016.where_to_stay(place_rand)