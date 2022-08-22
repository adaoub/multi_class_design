class Todo
  def initialize(todo)
    @todo = todo
    @done = false
  end

  def task
    @todo
  end

  def mark_as_done
    @done = true
  end

  def done
    @done
  end
end
