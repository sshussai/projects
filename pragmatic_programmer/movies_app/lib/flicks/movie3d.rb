require_relative 'movie'

class Movie3D < Movie

  def initialize(title, rank, wow_factor)
    super(title, rank)
    @wow_factor = wow_factor
  end

  def thumbs_up
    @wow_factor.times { super }
  end

  def show_effect
    puts "Wow! " * @wow_factor
  end
end


if __FILE__ == $0
  m = Movie3D.new('glee', 5, 10)
  puts m.title
  puts m.rank
  m.thumbs_up
  puts m.rank
end
