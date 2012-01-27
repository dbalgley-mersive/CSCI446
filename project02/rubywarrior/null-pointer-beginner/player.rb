class Player
	def initialize
		@health = 0
	end
	def blocked
		if (@warrior.feel.captive?)
			@warrior.rescue!
		else
			@warrior.attack!
		end
	end
	def safe?
		@warrior.feel.empty?
	end
	def injured?
		@warrior.health < 13
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
		blocked
	end
	@health = warrior.health
end
end