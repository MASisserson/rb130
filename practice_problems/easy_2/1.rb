# From-To-Step Sequence Generator

# return an array of each step taken

def step(start, finish, step_value)
  arr = []
  current_step = start
  loop do
    break if current_step > finish
    arr << current_step
    yield(current_step) if block_given?
    current_step += step_value
  end
  arr
end

p step(1, 10, 3)# { |value| puts "value = #{value}" }
