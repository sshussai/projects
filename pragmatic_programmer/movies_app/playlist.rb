class Playlist
  def initialize(name)
    @name = name.capitalize
    @movies = []
  end

  def add_movie(movie)
    @movies << movie
  end

  def roll_die
    rand(1..6)
  end

  def play
    puts "#{@name}'s playlist:"
    puts @movies

    @movies.each do |m|
      num = roll_die
      case num
      when 1..2
        m.thumbs_down
        puts "#{m.title} was thumbed down"
      when 3..4
        puts "#{m.title} was skipped"
      else
        m.thumbs_up
        puts "#{m.title} was thumbed up"
      end
      puts m
    end
  end

end


