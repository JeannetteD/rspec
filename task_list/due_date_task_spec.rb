require "rspec"
require_relative "tasklist"
require_relative "task"
require_relative "due_date"

#As a developer, I can create a DueDateTask, which is-a Task that has-a due date.
describe "DueDateTask" do
  it "is a thing" do
    expect{DueDateTask.new(1993, 02, 05)}.to_not raise_error
  end

  #this method should return the day the task is due
  it "should have a due day" do
    a_task = DueDateTask.new(1993, 02, 05)
    expect(a_task.due_day).to be_a Integer
  end

  #this method should return the month the task is due
  it "should have a due month" do
    a_task = DueDateTask.new(1993, 02, 05)
    expect(a_task.due_month).to be_a Integer
  end

  #this method should return the year the task is due
  it "should have a due year" do
    a_task = DueDateTask.new(1993, 02, 05)
    expect(a_task.due_year).to be_a Integer
  end

  #this method should return a formatted date as rthe due date
  it "should have a due date" do
    a_task = DueDateTask.new(1993, 02, 05)
    expect(a_task.due_date).to be_a Date
  end

  #As a developer, I can print an item with a due date with labels and values.
  it "should print labels and values of each item" do
    a_task = DueDateTask.new(3245, 6, 5)
    expect(a_task.to_s).to be_a String
  end

  it "should have a title" do
    a_task = DueDateTask.new(3245, 6, 5)
    expect(a_task.title).to eq "New Task"
  end




end #This is the last one.
