require('minitest/autorun')
require_relative('../room')
require_relative('../song')
require_relative('../guest')

class TestRoom < MiniTest::Test

  def setup
    @guest1 = Guest.new ("Kearnze")
    @guest2 = Guest.new ("Sam")
    @guest3 = Guest.new ("Putin")
    @guest4 = Guest.new ("Clarky")
    @guest5 = Guest.new ("Rab Mush")
    @guest6 = Guest.new ("Niall")

    guests = [@guest1, @guest2, @guest3, @guest4, @guest5, @guest6]

    @song1 = Song.new ("Shutdown")
    @song2 = Song.new ("Juice")
    @song3 = Song.new ("That's Not Me")
    @song4 = Song.new ("3 Wheel-ups")

    songs = [@song1, @song2, @song3, @song4]

    @Room1 = Room.new(guests, songs)
  end

  def test_add_song_to_room
    @Room1.add_song_to_room("Blessings")
    assert_equal( 5, @Room1.number_of_songs() )
  end

  def test_add_guest_to_room
    @Room1.add_guest_to_room("Quincy")
    assert_equal( 7, @Room1.number_of_guests() )
  end

  def test_remove_guest_from_room
    @Room1.remove_guest_from_room(@guest6)
    assert_equal( 5, @Room1.number_of_guests() )
  end

end