# Enumerable Class Creation

class Tree
  include Enumerable

  def each
    # implementation for Tree objects, yielding successive members of the collection
  end

  def <=>
    # code to determine what values are used for comparison if #max, min, or sort is used.
  end
end
