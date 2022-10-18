require 'pt6_exercise'

RSpec.describe ToDo do 
  it 'checks if add_task is a string' do 
    todo = ToDo.new 
    expect(todo.class).to eq ToDo
  end 
  it 'prints empty list' do
    task_list = ToDo.new
    expect(task_list.print_list).to eq ""
  end 
  it "print list with 1 task" do
    task_list = ToDo.new
    task_list.add_task("task1")
    expect(task_list.print_list).to eq "1. task1\n"
  end
  it "print list with 3 tasks" do
    task_list = ToDo.new
    task_list.add_task("task1")
    task_list.add_task("task2")
    task_list.add_task("task3")
    expect(task_list.print_list).to eq  "1. task1\n2. task2\n3. task3\n"
  end
  it 'adds 1 task and removes 1 task, returns ""' do 
  task_list = ToDo.new
  task_list.add_task("task1")
  task_list.delete_task(1)
  expect(task_list.print_list).to eq ""
  end
  it 'adds new elements and removes 2' do
    task_list = ToDo.new
    task_list.add_task("task1")
    task_list.add_task("task2")
    task_list.add_task("task3")
    task_list.delete_task(2)
    expect(task_list.print_list).to eq "1. task1\n2. task3\n"
  end
  it 'adds 3 new elements and removes last for name' do
    task_list = ToDo.new
    task_list.add_task("task1")
    task_list.add_task("task2")
    task_list.add_task("task3")
    task_list.delete_task("task3")
    expect(task_list.print_list).to eq "1. task1\n2. task2\n"
  end     

  it 'adds 3 new elements and removes last for name' do
    task_list = ToDo.new
    task_list.add_task("task1")
    task_list.add_task("task2")
    task_list.add_task("task3")
    task_list.delete_task("taskkkk3")
    expect(task_list.print_list).to eq "1. task1\n2. task2\n3. task3\n"
  end 

  it 'adds 3 same new elements and removes last for name' do
    task_list = ToDo.new
    task_list.add_task("task1")
    task_list.add_task("task1")
    task_list.add_task("task1")
    task_list.delete_task("task1")
    expect(task_list.print_list).to eq "1. task1\n2. task1\n"
  end 
  it 'adds new element and deletes first duplicate' do
    task_list = ToDo.new
    task_list.add_task("task1")
    task_list.add_task("task10")
    task_list.add_task("task1")
    task_list.delete_task("task1")
    expect(task_list.print_list).to eq "1. task10\n2. task1\n"
  end 
end 