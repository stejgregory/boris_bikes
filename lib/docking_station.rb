require_relative 'bike'

class DockingStation
  def initialize
    @twentybikes = []
  end
	def release_bike
    raise "Oh no! No bikes available!" if empty?
    @twentybikes.pop
	end
  def empty?
    @twentybikes.empty?
  end
  def full?
    @twentybikes.count >= 20
  end
	def dock(bike)
    fail 'Docking station full' if full?
		@twentybikes << bike
	end
	attr_reader :bike
  private :empty?, :full?
end
