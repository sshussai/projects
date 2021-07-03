require_relative 'movie'
require_relative 'waldorf_and_statler'

class Playlist
  def initialize(name)
    @name = name.capitalize
    @movies = []
  end

  def add_movie(movie)
    @movies << movie
  end

  def play(viewings)
    puts "#{@name}'s playlist:"
    puts @movies.sort

    1.upto(viewings) do |count|
      puts "\nViewing #{count}"
      @movies.each do |m|
        WaldorfAndStatler.review(m)
        puts m
      end
    end
  end


  def print_stats
    puts "\n#{@name}'s Stats:"

    hits, flops = @movies.partition { |m| m.hit? }
    puts "\nHits:"
    puts hits.sort

    puts "\nFlops:"
    puts flops.sort
  end

end

if __FILE__ == $0
  p = Playlist.new("kermit")
  m1 = Movie.new("goonies", 10)
  m2 = Movie.new("ghostbusters", 9)
  m3 = Movie.new("goldfinger")

  p.add_movie(m1)
  p.add_movie(m2)
  p.add_movie(m3)

  p.play(3)
  p.print_stats

end



