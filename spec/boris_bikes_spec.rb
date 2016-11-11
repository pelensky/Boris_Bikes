require './lib/docking_station'

describe DockingStation do
let(:bike) { double :bike}
let(:bike2) {double :bike}

  it "Responds to a method called release_bike" do
  expect(subject).to respond_to(:release_bike)
  end

  it "Expect a new bike to respond to working and working to be eq to true" do
    allow(bike).to receive(:working).and_return(true)
    expect(bike).to respond_to(:working)
    expect(bike.working).to eq true
  end

  it "Responds to a method called dock" do
    expect(subject).to respond_to(:dock).with(1).argument
  end

  # it "If bike is there, return true" do
  #   subject.dock(bike)
  #   expect(subject.release_bike).to eq bike
  # end

  it "Raises an error when asked to release bike when bikes array is empty" do

    expect {subject.release_bike}.to raise_error("No more bikes!")
  end

  it "Raises an error when full" do

    subject.capacity.times {subject.dock (bike)}
    expect {subject.dock (bike)}.to raise_error("Docking station full!")
  end

  it "Sets a capacity to default capacity if not given one" do
    expect(subject.capacity).to eq DockingStation::DEFAULT_CAPACITY
  end

  it "Allows a system maintainer to change capacity of docking station" do
    docking_station = DockingStation.new(40)
    docking_station.capacity.times {docking_station.dock bike}
    expect {docking_station.dock(bike)}.to raise_error "Docking station full!"
  end

  it "tests that release_bike will release a working bike" do
    allow(bike).to receive(:working).and_return(true)
    allow(bike2).to receive(:working).and_return(false)


    subject.dock(bike)
    subject.dock(bike2)
    expect(subject.release_bike.working).to eq true
  end

  it "tests that broken bikes returns broken bikes" do
    allow(bike).to receive(:working).and_return(true)
    allow(bike2).to receive(:working).and_return(false)

    subject.dock(bike)
    subject.dock(bike)
    subject.dock(bike2)
    subject.dock(bike2)

    expect(subject.broken_bikes.pop.working).to eq false
  end



end
