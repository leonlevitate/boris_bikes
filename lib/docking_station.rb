require_relative 'bike'

class DockingStation
#refactoring the bike method with attr reader:
  attr_reader :bike

  def release_bike
    Bike.new
  end

  def dock(bike)
    #Using an instance variable to store the bike
    #in 'state' of this instance
    @bike = bike
  end

end
