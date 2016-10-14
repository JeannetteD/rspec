require 'date'


class TaskList

  def initialize
    @completed = []
    @incomplete = []
    @due_dates = []
  end

  def show_completed
    #shows us the array of all completed tasks
    @completed
  end

  def add_completed=(newtask)
    #add new task to the array if it is done/completed
    @completed << newtask if newtask.done == true
  end

  def show_incomplete
    #shows us the array of all incompleted tasks
    @incomplete
  end

  def add_incomplete=(newtask)
    #add new task to the array if it is incomplete
    @incomplete << newtask if newtask.done == false
  end

# Story: As a developer, I can add items with due dates to my TaskList.
  def add_due_date_to_task_list
    @add_due_date.to_i
  end

  # As a developer, I can add items with due dates to my TaskList.
  def add_date_items(task_with_due_date)
    #add new task to the array if it is incomplete
    # tasks with due dates are shoveled into the due dates array if the due date exists and using "Date" class to check.
    @due_dates << task_with_due_date if task_with_due_date.due_date.class == Date
  end

  def due_dates
    @due_dates
  end

end
