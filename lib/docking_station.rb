require_relative 'bike'

class DockingStation
  attr_accessor :bike

  def release_bike
    case @bike
    when nil
      raise "Docking Station empty"
    else
      @bike
    end
  end

  def dock(bike)
    @bike = bike
  end
end
