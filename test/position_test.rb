require 'minitest/autorun'
require 'minitest/pride'
require './lib/position'

class PositionTest < Minitest::Test

  def test_it_exists
    position = Position.new
    assert_instance_of Position, position
  end

  def test_it_has_a_board
    position = Position.new
    assert_equal %w(-)*9, position.board
  end

  def test_it_gives_a_turn_for_X
    position = Position.new
    assert_equal "x", position.turn
  end

  def test_it_has_a_turn_for_O
    position = Position.new
    assert_equal "o", position.move("o")
  end

  def test_there_is_a_move
    position = Position.new
    assert_equal "x", position.xturn("x","o")


  end


end
