class DockingStation
  attr_reader :bikes

  def initialize
    @bikes = []
  end

  def release_bike
    raise 'no bikes available' if bikes.empty? == true
    Bike.new
  end

  def dock(bike)
    @bikes << bike
  end

  def bike
    bikes.sample
  end

end



class Bike

  def working?
    true
  end

end
