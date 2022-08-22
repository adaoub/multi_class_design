class TodoList
  def initialize
    @todos = []
  end

  def add(todo) #todo is an instance of todo
    @todos << todo
  end

  def complete
    @todos.select { |todo| todo.done }
  end

  def incomplete
    @todos.select { |todo| !todo.done }
  end
end
