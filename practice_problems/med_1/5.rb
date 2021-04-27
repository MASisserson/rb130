# Passing Parameters Part 3

items = ['apples', 'corn', 'cabbage', 'wheat']

def gather(items)
  puts "Let's start gathering food."
  yield(items)
  puts "We've finished gathering!"
end

gather(items) do |*first, last|
  puts "#{first[0]}, #{first[1]}, #{first[2]}"
  puts last
end

gather(items) do |first, *middle, last|
  puts first
  puts "#{middle[0]}, #{middle[1]}"
  puts last
end

gather(items) do |first, *last|
  puts first
  puts "#{last[0]}, #{last[1]}, #{last[2]}"
end

gather(items) do |apples, corn, cabbage, wheat|
  puts "#{apples}, #{corn}, #{cabbage}, and #{wheat}"
end
