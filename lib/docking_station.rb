require_relative 'bike'

class DockingStation
#refactoring the bike method with attr reader:
  attr_reader :bike

  def release_bike
    fail 'No bikes available' unless @bike 
    @bike
  end

  def dock(bike)
    #Using an instance variable to store the bike
    #in 'state' of this instance
    @bike = bike
  end

end
