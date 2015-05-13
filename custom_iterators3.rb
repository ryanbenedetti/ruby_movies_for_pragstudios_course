numbers = (1..10).to_a

#Below is Ruby's built-in select method
#    puts numbers.select { |n| n.even? }
#How might we build the select method shown above?

def my_select(array)
	results = []
	array.each do |element|
      results << element if yield(element)
	end
	results
end

puts my_select(numbers) { |n| n.even? }

