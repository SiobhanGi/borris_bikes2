require_relative 'bike.rb'

class DockingStation
  attr_reader :bikes

  def initialize
    @bikes = []

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
   @bikes.size >= 20
 end

 def empty?
   @bikes.size < 1
 end

end
