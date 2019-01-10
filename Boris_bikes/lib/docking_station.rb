require_relative 'bike'

class DockingStation

  attr_reader :bike

  def initialize
    @bike = nil
  end

  def release_bike
    if @bike.nil? 
      raise 'No bikes available'
    end
    Bike.new
  end

  def dock(bike)
    if @bike.class == Bike
      raise 'Docking station is full'
    else
      @bike = bike
    end
  end

end
