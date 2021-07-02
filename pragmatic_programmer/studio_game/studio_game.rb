class Player

  def initialize(player, health=100)
    @player = player.capitalize
    @health = health
  end

  def w00t
    @health += 15
    puts "#{@player} got w00ted!"
  end

  def blam
    @health -= 10
    puts "#{@player} got blammed!"
  end

  def to_s
    "I'm #{@player} with a health of #{@health}"
  end
  
end

p1 = Player.new("moe")
puts p1


p2 = Player.new("larry", 60)
puts p2


p3 = Player.new("curly", 125)
puts p3
p3.blam
puts p3
p3.w00t
puts p3
