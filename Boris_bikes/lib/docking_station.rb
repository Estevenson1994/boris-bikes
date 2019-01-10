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
    @bike = bike
  end

end
