module WaldorfAndStatler

  def self.roll_die
    rand(1..6)
  end

  def self.review(movie)
    num = self.roll_die
    puts "test: #{num}"
    case num
    when 1..2
      movie.thumbs_down
      puts "#{movie.title} was thumbed down"
    when 3..4
      puts "#{movie.title} was skipped"
    else
      movie.thumbs_up
      puts "#{movie.title} was thumbed up"
    end
 
  end

end
