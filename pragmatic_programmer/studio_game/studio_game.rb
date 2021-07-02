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

p1 = Player.new("moe")
p2 = Player.new("larry", 60)
p3 = Player.new("curly", 125)

players = [p1, p2, p3]
players.each do |p|
  p.blam
  p.w00t
  p.w00t
  puts p
end
