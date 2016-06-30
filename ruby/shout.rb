module Shout
	def yell_angrily(words)
		puts words + "!!!" + " :("
	end

	def yell_happily(words)
		puts words + "!!!" + " :)"
	end
end


class Soccer_Trainer
	include Shout
end

class Teacher
	include Shout
end

soccer_trainer = Soccer_Trainer.new
soccer_trainer.yell_angrily("Run, run, shoot, run, shooooooot")
soccer_trainer.yell_happily("Goal, goal, goal")

teacher = Teacher.new
teacher.yell_happily("Well done")
teacher.yell_angrily("Where is your homework???")


#module Shout
#	def self.yell_angrily(words)
#		puts words + "!!!" + " :("
#	end
#
#	def self.yell_happily(words)
#		puts words + "!!!" + " :)"
#	end
#end
#
#Shout.yell_angrily("aaarg")
#Shout.yell_happily("juhhhhuuuu")