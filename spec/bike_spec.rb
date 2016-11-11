require "./lib/docking_station.rb"
require "./lib/bike.rb"

describe Bike do
  it "Responds to a method called working?" do
  expect(Bike.new).to respond_to(:working?)
  end




end
