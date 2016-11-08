require "docking_station"

describe DockingStation do
  it { is_expected.to respond_to(:release_bike) }
  #when we instantiate DockingStation class and run release_bike, we expect to get an instance of Bike class
  #station = DockingStation.new
  #bike = station.release_bike

  it 'releases working bikes' do
    station = DockingStation.new
    bike = station.release_bike
    expect(bike).to respond_to(:working?)
  end

end
