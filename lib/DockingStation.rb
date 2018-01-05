class DockingStation
  attr_reader :bikes

  def initialize
    @bikes
  end

  def release_bike
    raise 'no bikes available' if bikes == nil
    bikes
  end


  def dock(bike)
      raise "Docking Station full" if @bikes
      @bikes = bike
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
