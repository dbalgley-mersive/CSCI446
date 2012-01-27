class Player
	def initialize
		@health = 0
	end
	def safe?
		@warrior.feel.empty?
	end
	def injured?
		@warrior.health < 12
	end
	def safeact
		if (injured? and @warrior.health >= @health)
			@warrior.rest!
		else
			@warrior.walk!
		end
	end
  	def play_turn(warrior)
	@warrior = warrior
	if (safe?)
		safeact
	else
		warrior.attack!
	end
	@health = warrior.health
end
end