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
      p.blam
      p.w00t
      p.w00t
      puts p
    end
  end

end


