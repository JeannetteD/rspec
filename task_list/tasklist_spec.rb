require "rspec"
require_relative "tasklist"

describe "TaskList" do

  # As a developer, I can add all of my Tasks to a TaskList.
  it "is a thing" do
    expect{Tasklist.new}.to_not raise_error
  end

  #As a developer with a TaskList, I can get the completed items.
  it "should show completed items" do
    task_list = Tasklist.new
    #Check if the method "show_completed" exists.
    expect{task_list.show_completed}.to_not raise_error
    ##Shows an array of completed items.
    expect(task_list.show_completed).to be_a Array
  end

  #As a developer with a TaskList, I can get the incomplete items.
  it "should show incompleted items list" do
    task_list = Tasklist.new
    #check if the method "show_incomplete" exists
    expect{task_list.show_incomplete}.to_not raise_error
    #Shows an array of incompleted items.
    expect(task_list.show_incomplete).to be_a Array
  end
end
