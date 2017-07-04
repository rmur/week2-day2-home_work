require('minitest/autorun')
require_relative ('../bus.rb')
require_relative('../person.rb')

class TestBusDriving < MiniTest::Test

def setup

@bus = Bus.new(22 , "Ocean Terminal")
@passenger = Passenger.new("John", 23)

end

end