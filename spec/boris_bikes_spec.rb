require './lib/docking_station'

describe DockingStation do
  it "Responds to a method called release_bike" do
  docking_station = DockingStation.new
  expect(docking_station).to respond_to(:release_bike)
  end
  # it { is_expected.to respond_to (:release_bike)}
  # it "Releases a bike and expects it to work" do
  #   release_bike = Bike.new
  #   expect(release_bike).to respond_to(:working?)
  # end



  it "Expect a new bike to respond to working and working to be eq to true" do

    docking_station = DockingStation.new
    bike= Bike.new
    bike_condition = bike.working
    expect(bike).to respond_to(:working)
    expect(bike_condition).to eq true
  end

  it "Responds to a method called dock" do

    expect(subject).to respond_to(:dock).with(1).argument
  end

  # it "If bike is there, return true" do
  #   docking_station = DockingStation.new
  #   bike = Bike.new
  #   docking_station.dock(bike)
  #   expect(docking_station.release_bike).to eq bike
  # end

  it "Raises an error when asked to release bike when bikes array is empty" do

    expect {subject.release_bike}.to raise_error("No more bikes!")
  end

  it "Raises an error when full" do

    subject.capacity.times {subject.dock double(:bike)}
    expect {subject.dock double(:bike)}.to raise_error("Docking station full!")
  end

  it "Sets a capacity to default capacity if not given one" do
    expect(subject.capacity).to eq DockingStation::DEFAULT_CAPACITY
  end

  it "Allows a system maintainer to change capacity of docking station" do
    docking_station = DockingStation.new(40)
    bike = Bike.new
    docking_station.capacity.times {docking_station.dock bike}
    expect {docking_station.dock(bike)}.to raise_error "Docking station full!"
  end

  it "tests that release_bike will release a working bike" do
    bike=Bike.new
    bike2=Bike.new
    bike2.working = false
    subject.dock(bike)
    subject.dock(bike2)
    expect(subject.release_bike.working).to eq true
  end
#dkvhfuvhfdu


end
