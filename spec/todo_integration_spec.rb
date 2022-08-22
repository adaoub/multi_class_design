require "todo"
require "todo_list"

describe "integration" do
  it "returns list of incomplete tasks" do
    todo = Todo.new ("take bins out")
    todo_list = TodoList.new
    todo_list.add(todo)
    expect(todo_list.incomplete).to eq [todo]
  end

  it "returns list of complete tasks" do
    todo = Todo.new ("take bins out")
    todo_list = TodoList.new
    todo_list.add(todo)
    todo.mark_as_done
    expect(todo_list.complete).to eq [todo]
  end
end
