require_relative 'rankable'

class Movie
  include Rankable

  attr_accessor :title
  attr_accessor :rank

  def initialize(title, rank=0)
    @title = title.capitalize
    @rank = rank
    @snack_carbs = Hash.new(0)
  end

  def ate_snack(s)
    @snack_carbs[s.name] += s.carbs
    puts "#{@title} led to #{s.carbs} #{s.name} carbs"
    puts "#{@title}'s snacks: #{@snack_carbs}"
  end

  def total_carbs
    @snack_carbs.values.reduce(0, :+)
  end

  def each_snack
    @snack_carbs.each do |sn, sc|
      s = Snack.new(sn, sc)
      yield s
    end
  end

  def to_s
    "#{@title} has a rank of #{@rank}! (#{status})"
  end

  def to_csv
    "#{@title},#{@rank}"
  end

  def self.from_csv(line)
    title, rank = line.split(',')
    Movie.new(title, Integer(rank))
  end

end

if __FILE__ == $0
  # example code that runs only if the movie.rb file is run
  # it does not run if movie.rb is included in another file, 
  # and that other file is run
  m = Movie.new("goonies", 10)
  puts m.title
  puts m.rank
end
