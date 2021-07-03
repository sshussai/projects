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

  def play
    puts "#{@name}'s playlist:"
    puts @movies

    @movies.each do |m|
      WaldorfAndStatler.review(m)
      puts m
    end
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

  p.play

end



