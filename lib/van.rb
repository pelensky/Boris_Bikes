require './lib/docking_station'

class Van

  attr_reader :collected_bikes

  def van_broken_bikes(station)
    @collected_bikes =  station.broken_bikes
  end

  def deliver_broken_bikes(garage)

    garage.bikes_g = @collected_bikes

  end


end
