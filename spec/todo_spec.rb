require "todo"

describe Todo do
  it "returns todo as a string" do
    todo = Todo.new("take bins out")
    expect(todo.task).to eq "take bins out"
  end
end
