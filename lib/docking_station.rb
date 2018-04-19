require_relative 'bike.rb'

class DockingStation
  attr_reader :bike
  
  def initialize
    @bikes = []
  end

  def release_bike
    if @bike # if true return bike
      @bike = nil

    else
      fail RuntimeError, "No bikes available."
    end
  end

  def dock(bike)
     if @bike == nil
      @bike = bike
     else
       fail RuntimeError, "Bike already docked"
     end
  end


end
