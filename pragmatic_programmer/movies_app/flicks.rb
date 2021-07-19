require_relative 'playlist'
require_relative 'movie'
require_relative 'movie3d'

m1 = Movie.new("goonies", 10)
m2 = Movie.new("ghostbusters", 9)
m3 = Movie.new("goldfinger")

p = Flicks::Playlist.new("kermit")
# p.load('superhero_movies.csv')
p.load(ARGV.shift || 'movies.csv')
# p.load()
m = Movie3D.new('glee', 5, 10)
p.add_movie(m)

loop do
  puts "\nHow many viewings? ('q' to quit)"
  ans = gets.chomp.downcase
  case ans
  when /^\d+$/
    p.play(ans.to_i)
  when 'q', 'quit', 'exit'
    p.print_stats
    p.save
    break
  else
    puts "Please enter a number or 'q'"
  end
end
