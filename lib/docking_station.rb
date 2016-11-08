class DockingStation
  def release_bike
    Bike.new
  end
end

class Bike
  def working?
    return "Yes"
  end
end
