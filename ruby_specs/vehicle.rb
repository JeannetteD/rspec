class Vehicle

  def initialize
    @model_year = 2016
    @light = false
    @signal = "off"
    @speed = 00
    @garage = []
  end

  def model_year=(year)
    @model_year = year
  end

  def model_year
    @model_year
  end

  def lights_on
    @light = true
  end

  def lights_off
    @light = false
  end

  def lights
    if @light == true
      return "on"
    else
      return "off"
    end
  end

  def signal
    @signal
  end

  def signal_left
    @signal = "left"
  end

  def signal_right
    @signal = "right"
  end

  def speed
    @speed
  end

end
