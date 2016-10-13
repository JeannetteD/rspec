require "rspec"
require_relative "garage"
require_relative "vehicle"
require_relative "car"
require_relative "tata"
require_relative "tesla"
require_relative "toyota"

describe "Garage" do

  it "is a thing" do
    expect{Garage.new}.to_not raise_error
  end

  it "can store a car" do
    garage = Garage.new
    expect(garage.cars.count).to eq 0

    tesla = Tesla.new
    garage.cars = tesla

    expect(garage.cars.count).to eq 1
  end

end
