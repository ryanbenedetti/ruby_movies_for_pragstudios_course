Snack = Struct.new(:name, :carbs)

module SnackBar	
  SNACKS = [
	Snack.new(:popcorn, 20),
	Snack.new(:candy, 15),
	Snack.new(:nachos, 40),
	Snack.new(:pretzel, 10),
    Snack.new(:soda, 5)
  ]

	def self.random
	  SNACKS.sample
	end #end self.random

end #end Module

#the statement below (i.e. "if __FILE__ == $0")
#says "only run the code below 
#if it's being run from inside the file itself"

if __FILE__ == $0
	puts SnackBar::SNACKS
	snack = SnackBar.random
	puts "Enjoy yuor #{snack.name} (#{snack.carbs} carbs)"
end


# NOTES:
# We could use a class here
# but a snack doesn't have much behavior

# class Snack
# attr_reader :name, :carbs

# 	def initialize(name, carbs)
# 		@name = name
# 		@carbs = carbs
# 	end

# end


# How about a Struct?
# a struct is just a collection of attributes

# Snack = Struct.new(:name, :carbs)

# popcorn = Snack.new('popcorn', 20)
# puts popcorn.name
# puts popcorn.carbs

# candy = Snack.new('candy', 15)
# puts candy.name
# puts candy.carbs