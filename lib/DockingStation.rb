class DockingStation
  attr_reader :bikes

  def initialize
    @bikes = []
  end

  def release_bike
    raise 'no bikes available' if bikes.empty? 
    @bikes.pop
  end


  def dock(bike)
      raise "Docking Station full" if @bikes.count >= 20
      @bikes << bike

  end

  def bike
    bikes
  end

end



class Bike

  def working?
    true
  end

end
