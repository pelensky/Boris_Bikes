require './lib/bike'

class DockingStation

attr_reader :capacity, :bikes

  DEFAULT_CAPACITY = 20

  def initialize(capacity=DEFAULT_CAPACITY)
    @bikes = []
    @capacity = capacity
  end

  def release_bike
    raise "No more bikes!" if empty?
      return_working_bike
    return working_bike
  end

  def dock(bike)
    raise "Docking station full!" if full?
    @bikes << bike
  end

private

   def return_working_bike
      @bikes.select {|bike| bike.working}.pop
   end

   def full?
     @bikes.count >= @capacity
   end

   def empty?
     @bikes.count == 0
   end
 end
