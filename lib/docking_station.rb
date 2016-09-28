require_relative 'bike'

class DockingStation

  attr_reader :bike

  def initialize
    @bikes = []
    @capacity = 20
  end

  def release_bike
    fail 'No bikes available' if @bikes.empty?
    @bikes.pop
  end

  def dock(bike)
    fail 'Docking station full' if @bikes.count >= @capacity
    @bikes << bike
  end
end
