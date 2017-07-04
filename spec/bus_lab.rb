require('minitest/autorun')
require_relative ('../bus.rb')
require_relative('../person.rb')

class TestBusDriving < MiniTest::Test

  def setup

    @bus = Bus.new(22 , "Ocean Terminal")
    @passenger = Passenger.new("John", 23)

  end

  def test_bus_route
    bus = @bus.route_number
    assert_equal(22, bus)
    
  end

  def test_bus_sound
    assert_equal("Wrooom", @bus.drive)
  end

  def test_passanger_name_and_age
    person_age = @passenger.age
    person_name = @passenger.name
    assert_equal(23 , person_age)
    assert_equal("John", person_name)
  end

end