class Todo
  DONE_MARKER = 'X'
  UNDONE_MARKER = ' '

  attr_accessor :title, :description, :done

  def initialize(title, description='')
    @title = title
    @description = description
    @done = false
  end

  def done!
    self.done = true
  end

  def done?
    done
  end

  def undone!
    self.done = false
  end

  def to_s
    "[#{done? ? DONE_MARKER : UNDONE_MARKER}] #{title}"
  end

  def ==(otherTodo)
    title == otherTodo.title &&
      description == otherTodo.description &&
      done == otherTodo.done
  end
end


# This class represents a collection of Todo objects.
# You can perform typical collection-oriented actions
# on a TodoList object, including iteration and selection.

class TodoList
  attr_accessor :title

  def initialize(title)
    @title = title
    @todos = []
  end

  def add(todo)
    raise TypeError, "Can only add Todo objects" if !(todo.is_a? Todo)
    todos << todo
  end

  def size
    todos.size
  end

  def first
    todos.first.to_s
  end

  def last
    todos.last.to_s
  end

  def to_a
    todos.map(&:to_s)
  end

  def done?
    todos.all?(&:done?)
  end

  def item_at(index)
    index_check(index)
    todos[index]
  end

  def mark_done_at(index)
    item_at(index).done!
  end

  def mark_undone_at(index)
    item_at(index).undone!
  end

  def done!
    todos.each(&:done!)
  end

  def shift
    todos.shift
  end

  def pop
    todos.pop
  end

  def remove_at(index)
    index_check(index)
    todos.delete_at(index)
  end

  def to_s
    text = "--- #{title} ----\n"
    text << todos.map(&:to_s).join("\n")
    text
  end

  def index_check(index)
    raise IndexError, "No item #{index} on list" if todos[index].nil?
  end

  def each
    todos.each do |todo|
      yield(todo)
    end
    self
  end

  def select
    new_todo_list = TodoList.new(title)
    todos.select do |todo|
      yield(todo)
    end.each { |todo| new_todo_list.add todo }
    
    new_todo_list
  end

  private

  attr_accessor :todos
end

todo1 = Todo.new("Buy milk")
todo2 = Todo.new("Clean room")
todo3 = Todo.new("Go to gym")

list = TodoList.new("Today's Todos")
list.add(todo1)
list.add(todo2)
list.add(todo3)

todo1.done!

results = list.select { |todo| todo.done? }    # you need to implement this method

puts results.inspect
