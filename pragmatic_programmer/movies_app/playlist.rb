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
      m.thumbs_up
      puts m
    end
  end

end


