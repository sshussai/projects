require_relative 'die'
require_relative 'player'

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
      d = Die.new
      num = d.roll
      case num
      when 1..2
        p.blam
        puts "#{p.name} was blammed!"
      when 3..4
        puts "#{p.name} was skipped!"
      else
        p.w00t
        puts "#{p.name} was w00ted!"
      end
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
