class Toyota < Car

  def initialize
    super
    @honk_horn = "whoop"
  end

  def accelerate
    @speed += 7
  end

  def brake
    @speed -= 5
  end

end
