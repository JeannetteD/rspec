require 'rspec'
require_relative 'vehicle'

describe "Vehicle" do

  it "is a thing" do
    expect{Vehicle.new}.to_not raise_error
  end

  it "should have a model year" do
    vehicle = Vehicle.new
    expect(vehicle.model_year).to be_a Integer
  end

  it "should have a lights on function" do
    vehicle = Vehicle.new
    expect(vehicle.lights_on).to eq true
  end

  it "should have a lights off function" do
    vehicle = Vehicle.new
    expect(vehicle.lights_off).to eq false
  end

  it "should tell you if the lights are on or off" do
    vehicle = Vehicle.new
    expect(vehicle.lights).to eq "off"
  end

  it "should tell you if the signal is on or off" do
    vehicle = Vehicle.new
    expect(vehicle.signal).to eq "off"
  end

  it "should have a default speed of 0" do
    vehicle = Vehicle.new
    expect(vehicle.speed).to eq 00
  end

end
