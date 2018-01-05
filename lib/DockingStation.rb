class DockingStation
  attr_reader :bikes

  def initialize
    @bikes = []
  end

  def release_bike
    raise 'no bikes available' if empty?
    @bikes.pop
  end

  def dock(bike)
      raise "Docking Station full" if full?
      @bikes << bike
  end

  def bike
    bikes
  end

  private
  def empty?
    bikes.empty?
  end

  def full?
    @bikes.count >= 20
  end

end



class Bike

  def working?
    true
  end

end
