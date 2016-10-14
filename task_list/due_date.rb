require 'date'

class DueDateTask < Task

  #Task.new comes w/ this class for free
  #Task.new(month, day, year)
  #Ruby date class: formatting due date arguments, making them look nice
  def initialize(year, month, day)
    @title = "New Task"
    @description = "Describe your task here"
    @done = false
    @month = month
    @day = day
    @year = year
    @due_date = Date.new(@year, @month, @day)
  end

  #Returns the month when this task is due.
  def due_month
    @month.to_i
  end

  #Returns the day when this task is due.
  def due_day
    @day.to_i
  end

  #Returns the year when this task is due.
  def due_year
    @year.to_i
  end

  #Returns the full date when the task is due.
  def due_date
    @due_date
  end




end
