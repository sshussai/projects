require_relative 'playlist'
require_relative 'movie'

m1 = Movie.new("goonies", 10)
m2 = Movie.new("ghostbusters", 9)
m3 = Movie.new("goldfinger")

p = Playlist.new("kermit")
# p.load('superhero_movies.csv')
p.load

loop do
  puts "How many viewings? ('q' to quit)"
  ans = gets.chomp.downcase
  case ans
  when /^\d+$/
    p.play(ans.to_i)
  when 'q', 'quit', 'exit'
    p.print_stats
    break
  else
    puts "Please enter a number or 'q'"
  end
end
