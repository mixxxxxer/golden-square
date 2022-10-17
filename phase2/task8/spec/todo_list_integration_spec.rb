require 'todo'
require 'todo_list'

RSpec.describe 'Todo and TodoList integration tests' do
  context 'Todo class' do
    it 'check basic init' do
      todo = Todo.new('task1')
      expect(todo.task).to eq 'task1'
    end
    it 'check status of task' do
      todo = Todo.new('task1')
      expect(todo.done?).to eq false
    end
    it 'check status of task after completed' do
      todo = Todo.new('task1')
      todo.mark_done!
      expect(todo.done?).to eq true
    end
  end

  context 'TodoList class' do
    it 'check basic init' do
      todolist = TodoList.new
      expect(todolist.complete).to eq []
    end
    it 'check add task' do
      todolist = TodoList.new
      todo = Todo.new('task1')
      todo.mark_done!
      todolist.add(todo)
      expect(todolist.complete).to eq ['task1']
    end
    it 'check completed' do
      todolist = TodoList.new
      todo1 = Todo.new('task1')
      todo2 = Todo.new('task2')
      todo3 = Todo.new('task3')
      todo1.mark_done!
      todolist.add(todo1)
      todolist.add(todo2)
      todolist.add(todo3)
      expect(todolist.complete).to eq ['task1']
    end
    it 'complete all 100 tasks' do
      todolist = TodoList.new
      100.times.with_index do 
      
      end
      todo1 = Todo.new('task1')
      todo2 = Todo.new('task2')
      todo3 = Todo.new('task3')
      todo1.mark_done!
      todolist.add(todo1)
      todolist.add(todo2)
      todolist.add(todo3)
      expect(todolist.incomplete).to eq ['task2','task3']
    end
  end
end