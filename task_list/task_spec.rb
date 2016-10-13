require "rspec"
require_relative "tasklist"
require_relative "task"

  #As a developer, I can create a Task.
describe "Task" do

  it "is a thing" do
    expect{Task.new}.to_not raise_error
  end

  #As a developer, I can give a Task a title and retrieve it.
  it "should have a title" do
    a_task = Task.new
    #checking to see if the title method exists
    expect{a_task.title}.to_not raise_error
    #Checking to see if the title is a string
    expect(a_task.title).to be_a String
  end

  #As a developer, I can give a Task a description and retrieve it
  it "should have a description" do
    a_task = Task.new
    #checking to see if the method "describe" exists
    expect{a_task.describe}.to_not raise_error
    #Checking to see if the description is a string
    expect(a_task.describe).to be_a String
  end

  #As a developer, I can mark a Task done.
  it "can be marked as done" do
    a_task = Task.new
    #checking to see if the method "done" exists
    expect{a_task.done}.to_not raise_error
    # Checking to see if it is"done".
    expect(a_task.done).to eq false
  end

  #As a developer, when I print a Task that is done, its status is shown.
  it "returns the status of the task" do
    a_task = Task.new
    #Checking to see if the method "status" exists.
    expect{a_task.to_s}.to_not raise_error
    #Makes sure the "status" is a string.
    expect(a_task.to_s).to be_a String
  end



end
