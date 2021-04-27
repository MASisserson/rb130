# Optional Blocks

def compute(argument)
  return yield(argument) if block_given?
  'Does not compute.'
end

p compute(5) { |num| 5 + 3 } == 8
p compute('a') { |char| char + 'b' } == 'ab'
p compute(4) == 'Does not compute.'
