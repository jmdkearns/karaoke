require('minitest/autorun')
require_relative('../guest')

class TestGuest < MiniTest::Test

  def setup
    @guest1 = Guest.new ("Josh")
    @guest2 = Guest.new ("Sam")
    @guest3 = Guest.new ("Phil")
    @guest4 = Guest.new ("Clark")

    guests = [@guest1, @guest2, @guest3, @guest4]
  end

  def test_guest_has_name
    assert_equal("Josh", @guest1.name )
  end
  
end