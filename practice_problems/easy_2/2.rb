# Zipper

def zip(arr_1, arr_2)
  new_arr = []
  arr_1.each_with_index do |value, index|
    new_arr << [value, arr_2[index]]
  end

  new_arr
end

def zip(arr_1, arr_2)
  arr_1.each_with_index.each_with_object([]) do |(value, index), new_arr|
    new_arr << [value, arr_2[index]]
  end
end

p zip([1, 2, 3], [4, 5, 6]) == [[1, 4], [2, 5], [3, 6]]
