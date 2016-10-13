class Car < Vehicle

  def initialize
    super
    @wheels = 4
    @honk_horn = "BEEP!"
  end

  def wheels
    @wheels
  end

  def honk_horn
    @honk_horn
  end

  def info
    return "You are driving a #{self.class}  #{@model_year.to_s} car at #{@speed}mph. Your car has #{@wheels} wheels. Are you car lights on? #{@light}."
  end

end
