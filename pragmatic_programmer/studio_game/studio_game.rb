class Player

  attr_reader :health
  attr_accessor :name

  def initialize(name, health=100)
    @name = name.capitalize
    @health = health
  end

  def name=(new_name)
    @name = new_name.capitalize
  end

  def score
    @health + @name.length
  end

  def w00t
    @health += 15
    puts "#{@name} got w00ted!"
  end

  def blam
    @health -= 10
    puts "#{@name} got blammed!"
  end

  def to_s
    "I'm #{@name} with a health of #{@health} and a score of #{score}"
  end
  
end

p1 = Player.new("larry", 60)
puts p1.name
p1.name = "Lawrence"
puts p1.name
p1.name = "lawrence"
puts p1.name
puts p1.health
puts p1.score
puts p1
