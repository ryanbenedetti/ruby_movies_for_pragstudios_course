def compute
	if block_given?
	  puts yield
	else
	  puts "Does not compute!"
	end
end

# no block given
compute

#give it a block
compute {"Smotchkkiss loves chunky bacon"}

