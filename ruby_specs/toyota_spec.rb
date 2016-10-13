require 'rspec'
require_relative "vehicle"
require_relative 'car'
require_relative 'toyota'

describe "Toyota" do

  it "is a thing" do
    expect{Toyota.new}.to_not raise_error
  end

  it "should Whoop when honked" do
    new_car = Toyota.new
    expect(new_car.honk_horn).to eq "whoop"
  end

  it "should speed up by 7 km/h per acceleration" do
    new_car = Toyota.new
    expect(new_car.accelerate).to eq 7
  end

  it "should slow down by 5 km/h per brake" do
    new_car = Toyota.new
    expect(new_car.brake).to eq -5
  end

end
