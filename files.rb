
#This way ...

# file = File.open("movies.csv")
# #read file
# file.close

#Or do it in a block ...

# File.open("movies.csv") do |file|
# #read file
# 	file.each_line do |line|
# 		puts line
# 	end
# end

#Or even better, use the File object's readlines method ...

require_relative 'movie'

File.readlines("movies.csv").each do |line|
	title, rank = line.split()
	movie = Movie.new(title, rank.to_i)
	puts movie
end



movie1 = Movie.new("Goonies", 10)
movie2 = Movie.new("Ghostbusters", 5)
movie3 = Movie.new("Goldfinger")

movies = [movie1, movie2, movie3]

File.open("movie_rankings.csv", "w") do |file|  
	movies.sort.each do |movie|
		file.puts "#{movie.title},#{movie.rank}"
	end
end
