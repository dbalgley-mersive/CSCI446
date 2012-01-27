class Player
	def initialize
		@health = 0
	end
	def blocked
		if (@warrior.feel.captive?)
			@warrior.rescue!
		elsif (@warrior.feel(:backward).captive?)
			@warrior.rescue! :backward
		else
			@warrior.attack!
		end
	end
	def overrun
		if (@warrior.feel(:backward).empty?)
			@warrior.walk! :backward
		else
			if (@warrior.feel(:backward).wall?)
				safeact
			elsif (@warrior.feel(:backward).captive?)
				blocked
			end
		end
	end
	def clear?
		@warrior.feel.empty?
	end
	def injured?
		@warrior.health < 20
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
	if (clear? and @warrior.health > 7)
		safeact
	elsif (@warrior.health <= 7)
		overrun
	else
		blocked
	end
	@health = warrior.health
end
end