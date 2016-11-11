class DockingStation

attr_reader :capacity

  DEFAULT_CAPACITY = 20

  def initialize(capacity=DEFAULT_CAPACITY)
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

private

   attr_reader :bikes

   def full?
     @bikes.count >= @capacity
   end

   def empty?
     @bikes.count == 0
   end
 end
