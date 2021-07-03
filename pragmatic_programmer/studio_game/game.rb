require_relative 'die'
require_relative 'player'
require_relative 'game_turn'

class Game
  
  def initialize(title)
    @title = title
    @players = []
  end

  def add_player(p)
    @players << p
  end

  def play
    puts "There are #{@players.count} players in #{@title}"
    @players.each do |p| 
      GameTurn.take_turn(p)
      puts p
    end
  end

end

if __FILE__ == $0
  g = Game.new("knuckleheads")
  p1 = Player.new("larry")
  p2 = Player.new("moe", 150)
  p3 = Player.new("shep", 50)

  g.add_player(p1)
  g.add_player(p2)
  g.add_player(p3)

  g.play
end
