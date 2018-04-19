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
    puts @bikes.size
    puts "******"
     if @bikes.size < 20
       puts @bikes.size
      @bikes << bike
     else
       fail RuntimeError, "Bike already docked"
     end
  end


end
