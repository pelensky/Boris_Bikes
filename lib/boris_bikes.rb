class DockingStation

attr_reader :bike

  def release_bike
  raise "No more bikes!" unless @bike
  Bike.new
  end

  def return_bike(bike)
    @bike = bike
  end

end

class Bike

  def working?
    true
  end

end
