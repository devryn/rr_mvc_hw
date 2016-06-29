require 'minitest/autorun'
require 'minitest/pride'


def changer(change)
  change_arr = []
  loop do
    if change >= 25
      change_arr << 25
      change -= 25
    elsif change < 25 && change >= 10
      change_arr << 10
      change -= 10
    elsif change < 10 && change >= 5
      change_arr << 5
      change -= 5
    elsif change < 5 && change >= 1
      change_arr << 1
      change -= 1
    else
      return change_arr
    end
  end
end



class ChangerTest < Minitest::Test
  def test_quarter_one
    assert_equal([25, 25], changer(50))
  end

  def test_quarter_two
    assert_equal([25, 25, 25], changer(75))
  end

  def test_quarter_three
    assert_equal([25], changer(25))
  end

  def test_dimes_one
    assert_equal([10], changer(10))
  end

  def test_nickel_one
    assert_equal([5], changer(5))
  end

  def test_penny
    assert_equal([1], changer(1))
  end

  def test_mixed_change
    assert_equal([25, 25, 10, 5, 1, 1], changer(67))
  end
end
