require "rspec"
require_relative "tasklist"
require_relative "task"
require_relative "due_date"
require "pry"


describe "TaskList" do

  # As a developer, I can add all of my Tasks to a TaskList.
  it "is a thing" do
    expect{TaskList.new}.to_not raise_error
  end

  #As a developer with a TaskList, I can get the completed items.
  it "should show completed items" do
    task_list = TaskList.new
    ##Shows an array of completed items.
    expect(task_list.show_completed).to be_a Array
  end

  #As a developer with a TaskList, I can get the incomplete items.
  it "should show incompleted items list" do
    task_list = TaskList.new
    #Shows an array of incompleted items.
    expect(task_list.show_incomplete).to be_a Array
  end


  # Story: As a developer, I can add items with due dates to my TaskList.
  it "should add due date" do
    #create TaskList
    #assign TaskList to a variable

    #make more DueDateTasks, maybe?
    #assign DDT's to variables (if more are made)
    task_list = TaskList.new
    due_date_task = DueDateTask.new(2016, 10, 10)
    due_date_task2 = DueDateTask.new(2016, 10, 11)
    #call Tasklist.add_date_items(due_date_task) for as many DDT's as you have
    task_list.add_date_items(due_date_task)
    task_list.add_date_items(due_date_task2)

   expect(task_list.due_dates).to match_array [due_date_task,due_date_task2]
  end

end #This is the end
