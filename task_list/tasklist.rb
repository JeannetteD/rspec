require 'date'


class TaskList

  def initialize(year, month, day)
    @completed = []
    @incomplete = []
    @month = month
    @day = day
    @year = year
    @due_date = Date.new(@year, @month, @day)
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

end
