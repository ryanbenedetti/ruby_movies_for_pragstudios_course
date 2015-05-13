def three_times
  puts "ready"
  yield 1
  puts "set"
  yield 2
  puts "go"
  yield 3
end

three_times { |number| puts number}