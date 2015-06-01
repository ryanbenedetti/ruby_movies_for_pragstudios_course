require_relative 'rankable'

class Movie
  #mixin the Rankable module
  include Rankable
  attr_accessor :title
  attr_accessor :rank
  
  def initialize(title, rank=0)
    @title = title.capitalize
    @rank = rank
    @snack_carbs = Hash.new(0)
  end
  
def self.from_csv(line)
    title, rank = line.split(',')
    movie = Movie.new(title, Integer(rank))
end


  def to_csv
    "#{@title},#{@rank}" 
  end

  #let's write a custom iterator
  def each_snack
    @snack_carbs.each do |name, carbs|
      snack = Snack.new(name, carbs)
      yield snack
    end
  end


def carbs_consumed
  @snack_carbs.values.reduce(0, :+)  
end

  def ate_snack(snack)
    @snack_carbs[snack.name] += snack.carbs
    puts "#{@title} led to #{snack.carbs} #{snack.name} carbs being consumed"
    puts "#{@title}'s snacks: #{@snack_carbs}"
  end
  
  def to_s
    "#{@title} has a rank of #{@rank} (#{status})."
  end

end

if __FILE__ == $0
  movie = Movie.new("goonies", 10)
  puts movie.title
  puts movie.rank
  movie.thumbs_up
  puts movie.rank
  movie.thumbs_down
  puts movie.rank
end