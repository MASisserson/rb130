# Divisors

require 'time'

def time_this
  start = Time.now
  yield
  finish = Time.now
  puts "#{finish - start} seconds"
end

def divisors(int)
  arr = []
  max = Math::sqrt(int)
  num = 1
  loop do
    arr << num << (int / num) if int % num == 0
    break if num >= max
    num += 1
  end
  arr.sort
end

# p divisors(1) == [1]
# p divisors(7) == [1, 7]
# p divisors(12) == [1, 2, 3, 4, 6, 12]
# p divisors(98) == [1, 2, 7, 14, 49, 98]
p divisors(99400891) == [1, 9967, 9973, 99400891] # may take a minute
time_this { divisors(999962000357) }
time_this { divisors(999962000357) }
