require_relative 'movie'
require_relative 'waldorf_and_statler'
require_relative 'snack_bar'

module Flicks
  class Playlist
    def initialize(name)
      @name = name.capitalize
      @movies = []
    end

    def add_movie(movie)
      @movies << movie
    end

    def load(from_file='movies.csv')
      # File.open(from_file) do |f|
      #   f.each_line do |l|
      #     puts l
      #   end
      # end

      File.readlines(from_file).each do |l|
        add_movie(Movie.from_csv(l))
      end
    end

    def save(to_file='movie_rankings.csv')
      File.open(to_file, 'w') do |f|
        @movies.sort.each do |m|
          f.puts m.to_csv
        end
      end
    end

    def play(viewings)
      puts "#{@name}'s playlist:"
      puts @movies.sort

      snacks = SnackBar::SNACKS
      puts "\nThere are #{snacks.size} snacks available in the Snack Bar"

      snacks.each do |s|
        puts "#{s.name} -- (#{s.carbs} carbs)"
      end

      1.upto(viewings) do |count|
        puts "\nViewing #{count}"
        @movies.each do |m|
          WaldorfAndStatler.review(m)
          s = SnackBar.random
          m.ate_snack(s)
          puts m
        end
      end
    end

    def total_carbs_consumed
      @movies.reduce(0) do |sum, movie|
        sum + movie.total_carbs
      end
    end

    def print_stats
      puts "\n#{@name}'s Stats:"

      puts "\n#{total_carbs_consumed} total carbs consumed"

      @movies.sort.each do |m|
        puts "\n#{m.title}'s snack totals:"
        m.each_snack do |s|
          puts "#{s.carbs} total #{s.name} carbs"
        end
        puts "#{m.total_carbs} grand total carbs"
      end

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
end




