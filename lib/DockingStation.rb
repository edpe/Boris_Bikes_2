class DockingStation
  attr_accessor :capacity
  attr_reader :bikes
  DEFAULT_CAPACITY = 20

  def initialize(capacity = DEFAULT_CAPACITY)
    @capacity = capacity
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
    @bikes.count >= DEFAULT_CAPACITY
  end

end



class Bike

  def working?
    true
  end

end
