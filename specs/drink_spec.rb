require('minitest/autorun')
require('minitest/rg')
require_relative('../drink.rb')

class DrinkTest < MiniTest::Test

  def setup()
    @drink1 = Drink.new("Strongbow", 1.40, 1)
  end

  def test_get_drink_name()
    assert_equal("Strongbow", @drink1.name)
  end

  def test_get_drink_price()
    assert_equal(1.40, @drink1.price)
  end

  def test_alcohol_level_of_a_drink()
    assert_equal(1, @drink1.alcohol_level)
  end

end
