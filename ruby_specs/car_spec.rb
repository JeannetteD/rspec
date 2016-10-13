require 'rspec'
require_relative 'vehicle'
require_relative 'car'

describe "Car" do

  it "is a thing" do
    expect {Car.new}.to_not raise_error
  end

  it "has 4 wheels" do
    car_one = Car.new
    expect(car_one.wheels).to eq 4
  end

    it "should have a horn" do
      expect(Car.new.honk_horn).to eq "BEEP!"
    end

    it "should tell me the car's information" do
      new_car = Car.new
      expect(new_car.info).to be_a String
    end
end
