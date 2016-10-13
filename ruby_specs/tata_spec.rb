require 'rspec'
require_relative 'vehicle'
require_relative 'car'
require_relative 'tata'


describe "Tata" do

  it "is a thing" do
    expect{Tata.new}.to_not raise_error
  end

  it "should beep" do
    new_car = Tata.new
    expect(new_car.honk_horn).to eq "beep"
  end

  it "should speed up to 2km/h" do
    new_car = Tata.new
    expect(new_car.accelerate).to eq 2
  end

  it "should slow down by 1.25 km/h per braking" do
    new_car = Tata.new
    expect(new_car.brake).to eq -1.25
  end
  
end
