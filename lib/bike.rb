class Bike

  attr_accessor :working

  def initialize
    @working = true
  end

  def working=(working = true)
    @working = working
  end


end
