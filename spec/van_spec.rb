
describe Van do

  let(:bike) { double :bike}
  let(:bike2) {double :bike}

  it "expects van.class is equal to class" do
    expect(subject.class).to eq(Van)
  end

  it "expects broken bikes to be broken" do
    station= DockingStation.new
    allow(bike).to receive(:working).and_return(true)
    allow(bike2).to receive(:working).and_return(false)

    station.dock(bike)
    station.dock(bike)
    station.dock(bike2)
    station.dock(bike2)

    subject.collect_broken_bikes(station)


    expect(subject.broken_bikes.pop.working).to eq(false)
end
end
