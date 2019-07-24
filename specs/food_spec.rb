require('minitest/autorun')
require('minitest/rg')
require_relative('../food.rb')

class FoodTest < MiniTest::Test

  def setup()
    @food1 = Food.new("Steak Pie", 5.50, 3)
  end

  def test_get_food_name()
    assert_equal("Steak Pie", @food1.name)
  end

end
