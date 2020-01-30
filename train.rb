class Train
  attr_reader :carriage, :train_type
  attr_accessor :current_station

  def initialize(train_number, train_type, carriage)
    @train_number = train_number
    @train_type = train_type
    @carriage = carriage
    @speed = 0
    @current_route = []
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
    self.current_station = current_route.route[0]
    current_station.take_train(self)
  end

  def prev_station
    @current_route.route[@current_route.route.index(current_station) - 1]
  end

  def next_station
    @current_route.route[@current_route.route.index(current_station) + 1]
  end

  def go_next
    current_station.send_train(self)
    self.current_station = next_station
    current_station.take_train(self)
  end

  def go_prev
    current_station.send_train(self)
    self.current_station = prev_station
    current_station.take_train(self)
  end
end
