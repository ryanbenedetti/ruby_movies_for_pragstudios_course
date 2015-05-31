require_relative 'movie'

class Movie3D < Movie

  def initialize(title, rank, wow_factor)
    #super runs the initialize method in the parent
    #so that we don't have to duplicate state in child
    super(title, rank)
    @wow_factor = wow_factor	
  end

#override parent method's behavior
  def thumbs_up
  	#let parent class handle updating of state
  	@wow_factor.times { super }
  end

  def show_effect
    puts "Wow!" * @wow_factor
  end

end

movie3d = Movie3D.new("glee", 5, 20)
puts movie3d.title
puts movie3d.rank

movie3d.thumbs_up

puts movie3d.rank
puts movie3d
movie3d.show_effect
