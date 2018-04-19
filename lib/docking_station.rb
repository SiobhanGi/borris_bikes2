require_relative 'bike.rb'

class DockingStation
  attr_reader :bikes

  def initialize
    @bikes = []
  end

  def release_bike
    if @bikes.size > 0 # if true return bike
      @bikes.pop
    else
      fail RuntimeError, "No bikes available."
    end
  end

  def dock(bike)
     if @bikes.size < 20
      @bikes << bike
     else
       fail RuntimeError, "Bike already docked"
     end

     def full?
     end
  end


end
