# DIY reduce method

=begin
Mental model, I keep track of a starting point (either the array's first element or
the passed in starting value) and change the place the variable points to to the return
of the block everytime the block is run. Run the block once for each element in the array.
=end


def reduce(array, start=0)
  count = 0
  final = start

  until count >= array.size
    final = yield(final, array[count])
    count += 1
  end

  final
end

array = [1, 2, 3, 4, 5]

p reduce(array) { |acc, num| acc + num }                    # => 15
p reduce(array, 10) { |acc, num| acc + num }                # => 25
p reduce(array) { |acc, num| acc + num if num.odd? }        # => NoMethodError: undefined method `+' for nil:NilClass
