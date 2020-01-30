require_relative 'train'
require_relative 'route'
require_relative 'station'

station1 = Station.new('One')
station2 = Station.new('Two')
station3 = Station.new('Three')
station4 = Station.new('Four')
station5 = Station.new('Five')

route1 = Route.new(station1, station4)
route1.add_station(station2)
route1.add_station(station3)
route1.add_station(station5)
route1.stations
route1.remove_station(station5)


train1 = Train.new('-1-', 'pass', 8)
train1 = Train.new('-2-', 'carg', 5)


train1.add_speed(53)
train1.current_speed
train1.add_carriage
train1.carriage
train1.add_carriage
train1.remove_carriage
train1.stop
train1.carriage
train1.add_carriage
train1.remove_carriage


train1.add_route(route1)
train2.add_route(route1)

station1.trains
stattion1.train_type_list('pass')

train1.current_station
train1.next_station
train1.go_next
train1.current_station
train1.prev_station

station1.train_list

train1.go_prev
