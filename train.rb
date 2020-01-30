class Train
  attr_reader :carriage, :train_type
  attr_accessor :current_station

  def initialize(train_number, train_type, carriage)
    @train_number = train_number
    @train_type = train_type
    @carriage = carriage
    @speed = 0
    @current_route = nil
  end

  def add_speed(plus_speed)
    @speed += plus_speed
  end

  def current_speed
    @speed
  end

  def stop
    @speed = 0
  end

  def add_carriage
    @carriage +=1 if @speed == 0
  end

  def remove_carriage
    @carriage -=1 if @speed == 0
  end

  def add_route(current_route)
    @current_route = current_route
    @current_route.stations.first.take_train(self)
  end

  def current_station
    @current_route.stations.each{ |station| return station if station.trains.include?(self) }
  end

  def current_station_index
    @current_route.stations.index(current_station)
  end

  def prev_station
    @current_route.stations[current_station_index - 1] if current_station != @current_route.stations.first
  end

  def next_station
    @current_route.stations[@current_station_index + 1] if current_station != @current_route.stations.last
  end

  def go_next
    if next_station
      departure_station = current_station
      next_station.take_train(self)
      departure_station.send_train(self)
    end
  end

  def go_prev
    if prev_station
      departure_station = current_station
      prev_station.take_train(self)
      departure_station.send_train(self)
    end
  end
end
