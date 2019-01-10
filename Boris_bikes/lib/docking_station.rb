require_relative 'bike'

class DockingStation

  attr_reader :bikes

  def initialize
    @bikes = []
  end

  def release_bike
    if @bikes.nil?
      raise 'No bikes available'
    end
    Bike.new
  end

  def dock(bike)
    if @bikes.length > 20
      raise 'Docking station is full'
    else
      @bikes << bike
    end
  end

end
