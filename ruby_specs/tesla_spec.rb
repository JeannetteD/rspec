require "rspec"
require_relative "vehicle"
require_relative "car"
require_relative "tesla"

describe "Tesla" do

  it "is a thing" do
    expect{Tesla.new}.to_not raise_error
  end

  it "should go Beep-bee-bee-boop-bee-doo-weep when honked" do
    expect(Tesla.new.honk_horn).to eq "Beep-bee-bee-boop-bee-doo-weep"
  end

  it "should speed up to 10km per hour" do
    car = Tesla.new
    expect(car.accelerate).to eq 10
  end

  it "should slow down by 7km per braking"do
    car = Tesla.new
    expect(car.brake).to eq -7
  end

end
