class Garage

  def initialize
    @cars = []
  end

  def cars
    @cars
  end

  def cars= car
    @cars = @cars << car
  end

end
