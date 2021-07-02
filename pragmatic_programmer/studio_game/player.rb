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

if __FILE__ == $0
  p1 = Player.new("moe")
  puts p1.name
  puts p1.health
  p1.w00t
  puts p1.health
  p1.blam
  puts p1.health
end
