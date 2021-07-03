require_relative 'die'
module GameTurn

  def self.take_turn(player)
    d = Die.new
    num = d.roll
    case num
    when 1..2
      player.blam
      puts "#{player.name} was blammed!"
    when 3..4
      puts "#{player.name} was skipped!"
    else
      player.w00t
      puts "#{player.name} was w00ted!"
    end
 
  end

end
