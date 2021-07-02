require_relative 'player'
require_relative 'game'

p1 = Player.new("moe")
p2 = Player.new("larry", 60)
p3 = Player.new("curly", 125)

g = Game.new("Knuckleheads")
g.add_player(p1)
g.add_player(p2)
g.add_player(p3)
g.play
