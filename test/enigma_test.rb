require 'minitest/autorun'
require 'minitest/pride'
require 'pry'
require './lib/key_generator'
require './lib/date_generator'
require './lib/offset_generator'
require './lib/enigma'

class EnigmaTest < Minitest::Test

  def setup
    @enigma = Enigma.new("Check out this message")
  end

  def test_it_exists
    assert_instance_of Enigma, @enigma
  end

  def test_message_atribute
    expected = "Check out this message"
    actual = @enigma.message
    assert_equal expected, actual
  end

end
