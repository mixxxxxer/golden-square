# File: lib/todo_list.rb
class TodoList
  def initialize
    @todolist = []
  end

  def add(todo) # todo is an instance of Todo
    @todolist << todo
    # Returns nothing
  end

  def incomplete
    result = []
    complete_tasks = @todolist.select {|item| item unless item.done? }
    complete_tasks.each do |task|
      result << task.task
    end
    result
    # Returns all non-done todos
  end

  def complete
    result = []
    complete_tasks = @todolist.select {|item| item if item.done? }
    complete_tasks.each do |task|
      result << task.task
    end
    result
    # Returns all complete todos
  end

  def give_up!
    @todolist.each do |item|
      item.mark_done! unless item.done?
    end
  end
end