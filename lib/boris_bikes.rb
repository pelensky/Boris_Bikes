class DockingStation

attr_reader :bikes

  DEFAULT_CAPACITY = 20

  def initialize(capacity = DEFAULT_CAPACITY)
    @bikes = []
    @capacity = capacity
  end

  def release_bike
    raise "No more bikes!" if empty?
    @bikes.pop
  end

  def dock(bike)
    raise "Docking station full!" if full?
    @bikes << "bike"
  end

  def full?
    @bikes.count >= @capacity #DEFAULT_CAPACITY
  end

  def empty?
    @bikes.count == 0
  end

 private :full?, :empty?

end

class Bike

  def working?
    true
  end

end
