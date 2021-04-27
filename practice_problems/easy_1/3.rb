# Find Missing Numbers

def missing(array)
  new_arr = []
  array.first.upto(array.last) do |num|
    new_arr << num if !array.include?(num)
  end
  new_arr
end

p missing([-3, -2, 1, 5]) == [-1, 0, 2, 3, 4]
p missing([1, 2, 3, 4]) == []
p missing([1, 5]) == [2, 3, 4]
p missing([6]) == []
