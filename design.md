# {{PROBLEM}} Multi-Class Planned Design Recipe

## 1. Describe the Problem

> As a user
> So that I can record my experiences
> I want to keep a regular diary

> As a user
> So that I can reflect on my experiences
> I want to read my past diary entries

> As a user
> So that I can reflect on my experiences in my busy day
> I want to select diary entries to read based on how much time I have and my reading speed

> As a user
> So that I can keep track of my tasks
> I want to keep a todo list along with my diary

> As a user
> So that I can keep track of my contacts
> I want to see a list of all of the mobile phone numbers in all my diary entries

## 2. Design the Class System

_Consider diagramming out the classes and their relationships. Take care to
focus on the details you see as important, not everything. The diagram below
uses asciiflow.com but you could also use excalidraw.com, draw.io, or miro.com_

```
Diary and DiaryEntry classes to add and view diary entries.
Todo and TodoList classes add tasks, complete, remove and view.
contact class to store contacts details in diary entries

```

_Also design the interface of each class in more detail._

```ruby
class Diary
  def initialize
    # ...
  end

  def add(entry) # entry is an instance of DiaryEntry
    # Returns nothing
  end

  def view_all
    # Returns a list of diray entries
  end

  def reading_time(wpm, minutes) #wpm is words per minute, both are integers
    #returns longest diary entry that can be read given the wpm and minutes
  end
end

class DiaryEntry
    def initialize(title, contents) # title and contents are both strings
    end

    def title
    #return title as string

    end

    def contents
    #return contents as string
    end
end

class todo
 def initialize(todo)
    #default, done = false
 end

def task
    #return todo
end

def done
    #marks entry as done
 end

 end

 class todolist
 def initialize
 end

 def add(todo) #todo is an instance of todo
 end

 def complete
    #return all completed todos
 end

 def incomplete
    #return all incompleted todos
 end

 def view_all

    #return all todos
 end
 end

 class Contact

 def initialize (name, number) #name is string/#number is integer
 end

 end



```

## 3. Create Examples as Integration Tests

_Create examples of the classes being used together in different situations and
combinations that reflect the ways in which the system will be used._

```ruby
# EXAMPLE
    diary = Diary.new
    diary_entry = DiaryEntry.new("today", "Coding today")
    diary.add(diary_entry)
    diary.view_all # [diary_entry]

    diary = Diary.new
    diary_entry = DiaryEntry.new("today", "Coding today")
    diary.add(diary_entry)
    diary_entry2 = DiaryEntry.new("today", "entry " * 100)
    diary.add(diary_entry2)
    diary.reading_time(2,1) # [diary_entry]

    todo = Todo.new ("take bins out")
    todo_list = TodoList.new
    todo_list.add(todo)
    todo_list.incomplete # [todo]

    todo1 = Todo.new ("take bins out")
    todo2 = Todo.new ("take bins out")
    todo_list = TodoList.new
    todo_list.add(todo1)
    todo_list.add(todo2)
    todo_list.view_all # [todo1, todo2]
    
    diary = Diary.new
    diary_entry = DiaryEntry.new("today", "Coding today")
    diary.add(diary_entry)
    contact = Contact.new("name", 012345)
    diary_entry.add_contact(contact)
    diary.contact # [contact]


```

## 4. Create Examples as Unit Tests

_Create examples, where appropriate, of the behaviour of each relevant class at
a more granular level of detail._

```ruby
# EXAMPLE
    diary_entry = DiaryEntry.new("title", "contents")
    diary_entry.contents # => "contents"

    diary = Diary.new
    diary.all # => []

    todo_list = TodoList.new
    todo_list.incomplete #=> []

    todo = Todo.new("take bins out")
    todo.task  #=> "take bins out"

```

_Encode each example as a test. You can add to the above list as you go._

## 5. Implement the Behaviour

_After each test you write, follow the test-driving process of red, green,
refactor to implement the behaviour._
