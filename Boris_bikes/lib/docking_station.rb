require_relative 'bike'

class DockingStation

  attr_reader :bikes

  def initialize
    @bikes = []
  end

  def release_bike
    if @bikes.empty?
      raise 'No bikes available'
    end
    @bikes.pop
  end

  def dock(bike)
    if @bikes.length >= 20
      raise 'Docking station is full'
    else
      @bikes << bike
    end
  end

end
