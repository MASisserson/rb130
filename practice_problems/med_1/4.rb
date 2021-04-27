# Passing Parameters Part 2

birds = %w(raven finch hawk eagle)

def sorting(arr)
  yield(arr)
end

sorting(birds) { |_, _, *raptors| puts "Raptors: #{raptors}" }
