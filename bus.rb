class Bus
attr_reader :route_number, :destination 
def initialize(route_number, destination)
@route_number = route_number
@destination = destination
@passengers = []
end

def drive()
  return "Wrooom"
end

def passengers_count()
  return @passengers.count
end

def pick_up(passenger)
  @passengers.push(passenger)
end

def drop_of()
  @passengers.pop
end

def empty()
  @passengers.clear
end

end