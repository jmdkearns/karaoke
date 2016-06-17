require('minitest/autorun')
require_relative('../room')
require_relative('../song')

class TestRoom < MiniTest::Test

  def setup
    @song1 = Song.new ("Shutdown")
    @song2 = Song.new ("Juice")
    @song3 = Song.new ("That's Not Me")
    @song4 = Song.new ("3 Wheel-ups")

    songs = [@song1, @song2, @song3, @song4]

    @Room1 = Room.new(2, songs)
  end

  def test_add_song_into_room
    @Room1.add_song_into_room("Blessings")
    assert_equal( 5, @Room1.number_of_songs() )
  end

end