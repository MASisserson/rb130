def each(array)
  counter = 0
  
  while counter < array.size
    yield(array[counter])       # yield to the blocm passing in the current element to the block
    counter += 1
  end

  array       # returns the `array` parameter.
end
