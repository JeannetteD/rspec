require 'date'
# As a developer, I can create a Task.

class Task < TaskList

  #Every new task has a default title
  def initialize(year, month, date)
    super
    @title = "New Task"
    @description = "Describe your task here"
    @done = false
  end

  #As a developer, I can give a Task a title and retrieve it
  #This method is like the set_given_name method
  def title=(title_name)
    @title = title_name
  end

  #This method is like the get_given_mname method
  def title
    @title
  end

  #This method sets the description.
  def describe=(description)
    @description = description
  end

  # This returns the description.
  def describe
    @description
  end

  #Checks to see if it is done.
  def done
    @done
  end

  #Changes the status of the task to done.
  def task_done
    @done = true
  end

  # Changing the values of all the methods to strings.
  def to_s
    if @done
      "Status: #{@done.to_s} : Your task is complete. Title : #{@title}. Description : #{@describe}. It is due on #{@due_date}."
    else
       "Status: #{@done.to_s} : Your task is incomplete. Title : #{@title}. Description : #{@describe}. It is due on #{@due_date}."
    end
  end

end
