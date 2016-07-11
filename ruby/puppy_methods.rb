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


#create our own class
class Bird
	#initialize the method
	def initialize
		puts "Initializing the bird class"

	end
	#accessor method
	def bird_song(x)
		count = 0
		while count < x
			puts "Tweet"
			count += 1
		end
	end
	#accessor method
	def fly  			
		puts "*fly*"
  	end
	#accessor method
	def bird_hungry(y)
		if y == true
			puts "The bird is hungry"
		else
			puts "The bird is not hungry"
		end
	end
end
		
#initialize hash
bird_hash = {}
#create loop to make 50 instances of the bird class
counter = 0
while counter < 3
	# create an object
	birdy = Bird.new
	#use the accessor methods
	#bird.bird_song()
	#bird.fly()
	#bird.bird_hungry()
	counter += 1
	bird_hash[birdy] = counter
	#create name for hash
	#name = "instance_".concat(counter.to_s)
	# put values into hash
	#bird_activities[name] = {} 
	#bird_activites[name][:bird_song] = bird.bird_song()
	#	:bird_song => "#{x}" --> does not work
	#	:fly => "?" 
	#	:bird_hungry => bird.bird_song --> calls the method a second time
	#}
end

p bird_hash

bird_hash.each do |birdy, counter|
  puts "Bird number #{counter} flying away!"
  birdy.bird_song(2)
  birdy.fly
  birdy.bird_hungry(true)
end


#toy = Puppy.new
#toy.fetch("ball")
#toy.speak(6)
#toy.roll_over
#toy.dog_year(2)
#toy.jump(10)
