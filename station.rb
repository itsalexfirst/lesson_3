class Station
  attr_reader :name

  def initialize(name)
    @name = name
    @trains_on_station = []
  end

  def take_train(train)
    @trains_on_station << train
  end

  def train_list
    @trains_on_station
  end

  def train_type_list(type)
    @trains_on_station.select { |train| train.train_type == type }
  end

  def send_train(train)
    @trains_on_station.delete(train)
  end
end
