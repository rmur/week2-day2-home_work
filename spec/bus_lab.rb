require('minitest/autorun')
require_relative ('../bus.rb')
require_relative('../person.rb')

class TestBusDriving < MiniTest::Test

  def setup

    @bus = Bus.new(22 , "Ocean Terminal")
    @passenger1 = Passenger.new("John", 23)
    @passenger2 = Passenger.new("Stuart", 27)
    @passenger3 = Passenger.new("Mickey", 32)

  end

  def test_bus_route
    bus = @bus.route_number
    assert_equal(22, bus)
    
  end

  def test_bus_sound
    assert_equal("Wrooom", @bus.drive)
  end

  def test_passanger_name_and_age
    person_age = @passenger1.age
    person_name = @passenger1.name
    assert_equal(23 , person_age)
    assert_equal("John", person_name)
  end

  def test_passenger_count()
    passenger_count1 = @bus.passengers_count
    assert_equal(0, passenger_count1)
  end

  def test_pick_up()
    pick_up_passenger = @bus.pick_up(@passenger1)
    assert_includes(pick_up_passenger, @passenger1)
  end

  def test_drop_of()
    drop_of = @bus.drop_of
    assert_equal(0 , @bus.passengers_count)
  end

  def test_collcet ()
    pick_up_passenger1 = @bus.pick_up(@passenger1)
    pick_up_passenger2 = @bus.pick_up(@passenger2)
    pick_up_passenger3 = @bus.pick_up(@passenger3)
    assert_equal(3, @bus.passengers_count)
  end

  def test_clear_bus
    clear_bus = @bus.empty
    assert_equal(0, @bus.passengers_count)

  end





end