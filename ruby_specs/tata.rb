class Tata < Car

  def initialize
    super
    @honk_horn = "beep"
  end

  def accelerate
    @speed += 2
  end

  def brake
    @speed -= 1.25
  end

end
