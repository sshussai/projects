require_relative 'playlist'
require_relative 'movie'

m1 = Movie.new("goonies", 10)
m2 = Movie.new("ghostbusters", 9)
m3 = Movie.new("goldfinger")

p = Playlist.new("kermit")
p.add_movie(m1)
p.add_movie(m2)
p.add_movie(m3)
p.play
