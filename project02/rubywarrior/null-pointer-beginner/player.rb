class Player
  def play_turn(warrior)
    if warrior.health <= 17 && warrior.feel.empty?
        warrior.rest!
    else if @health => warrior.health
        if warrior.feel.empty?
            warrior.walk!
        else
            warrior.attack!
    else if warrior.feel.empty?
            warrior.walk!
    else
            warrior.attack!
  end
      @health = warrior.health
end
end
end
end
end
end
end
end
