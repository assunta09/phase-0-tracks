class Puppy 
	def initialize
		puts "initialize new puppy instance"
	end

  def fetch(toy)
    puts "I brought back the #{toy}!"
 	toy
  end

  def speak(bark)
  	count = 0
  	while count < bark
  		puts "Woof"
  		count += 1
  	end
  end

  def roll_over
  	puts "*roll over*"
  end

  def dog_year(age)
  	age_dog = age * 7
  	return age_dog
  end

  def jump(height)
  	puts "The dog jumped #{height} in the air!"
  end
end


#counter = 0
#while counter < 5
	class Bird
		def initialize
			puts "Initializing the bird class"
		end

		def bird_song(tweet)
			count = 0
			while count < tweet
				puts "Tweet"
				count += 1
			end
		end

		def bird_hungry(food_needed)
			if food_needed == true
				puts "the bird is hungry"
			else
				puts "the bird is not hungry"
			end
		end
	end
	#counter += 1
#end
		

#bird_activities = {}
counter = 0
array = []
while counter < 10
	bird = Bird.new
	bird.bird_song(6)
	bird.bird_hungry(true)
	bird.bird_hungry(false)
	
	counter += 1
#	name = "instance_".concat(counter.to_s)
#	bird_activities[name] = {
#		:bird_song => bird_song(tweet)
#	}
end

#p bird_activities
p array

toy = Puppy.new
toy.fetch("ball")
toy.speak(6)
toy.roll_over
toy.dog_year(2)
toy.jump(10)


#10.times do |Bird|
#	return Bird
#end



