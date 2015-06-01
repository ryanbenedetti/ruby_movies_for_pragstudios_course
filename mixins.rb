module Rankable
	def thumbs_up
		puts "#{@title} got a thumbs up!"
	end
end

class Movie
	#mixin the Rankable module's methods to the Movie class
  include Rankable

	def initialize(title, rank)
		@title = title
		@rank = rank
	end
end

class Song
	#mixin the module's methods to the Song class
	include Rankable

	def initialize(title, rank)
		@title = title
		@rank = rank
	end
end

movie = Movie.new("Goonies", 10)
movie.thumbs_up

song = Song.new("Ruby Baby", 10)
song.thumbs_up