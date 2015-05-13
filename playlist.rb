require_relative 'movie'
require_relative 'waldorf_and_statler'
require_relative 'snack_bar'

class Playlist
  
  def initialize(name)
    @name = name
    @movies = []
  end
  
  def add_movie(a_movie)
    @movies << a_movie
  end

  def play(viewings)
    puts "#{@name}'s playlist:"
    puts @movies

    snacks = SnackBar::SNACKS
    puts "\nThere are #{snacks.size} snacks available in the snack bar."

    snacks.each do |snack|
      puts "#{snack.name} has #{snack.carbs} carbs"
    end
    
    1.upto(viewings) do |count|
      puts "\nViewing #{count}:"
      @movies.each do |movie|
        WaldorfAndStatler.review(movie)
        snack = SnackBar.random
        movie.ate_snack(snack)
        puts movie
      end #movies iterator
    
    end #upto iterator
  
  end #play method

  def total_carbs_consumed
    @movies.reduce(0) do |sum, movie|
      sum + movie.carbs_consumed
    end
  end
  
  def print_stats
    puts "\n#{@name}'s Stats:"

    puts "#{total_carbs_consumed} total carbs consumed"

    @movies.each do |movie|
      puts "\n#{movie.title}'s snack totals:"
      
      #this is where we call our custom iterator from movie.rb
      movie.each_snack do |snack|
        puts "#{snack.carbs} total #{snack.name} carbs"
      end

      puts "#{movie.carbs_consumed} grand total carbs"
    end

    hits, flops = @movies.partition{ |movie| movie.hit? }
    
    puts "\nHits:"
    #will call to_s method on array
    puts hits
    
    puts "\nFlops:"
    puts flops
  end #print_stats

end #Playlist class
