require_relative 'bike.rb'

class DockingStation
  attr_reader :bikes, :MAX_CAPACITY

  def initialize(capacity=20)
    @bikes = []
    @MAX_CAPACITY = capacity
  end

  def release_bike
    if empty? # if true return bike
      fail RuntimeError, "No bikes available."
    else
      @bikes.pop
    end
  end

def dock(bike)
  if full?
    fail RuntimeError, "Bike already docked"
  else
    @bikes << bike
  end
end

 private

 def full?
   @bikes.size >= @MAX_CAPACITY
 end

 def empty?
   @bikes.empty?
 end

end
