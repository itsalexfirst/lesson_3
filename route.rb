class Route
  attr_reader :route

  def initialize(start_station, end_station)
    @route = [start_station, end_station]
  end

  def add_station(station)
    @route.insert(-2, station)
  end

  def remove_station(station)
    @route.delete(station)
  end

  def list
    @route.each.with_index { |station, station_index| puts "#{station_index}. #{station.name}" }
  end
end
