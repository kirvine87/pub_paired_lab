require('minitest/autorun')
require('minitest/rg')
require_relative('../customer.rb')
require_relative("../drink.rb")

class CustomerTest < MiniTest::Test

  def setup()
    @customer1 = Customer.new("Pete Jakeman", 50.00, 45, 0)
    @drink1 = Drink.new("Tennents", 1.50, 1)
  end

  def test_get_customer_name()
    assert_equal("Pete Jakeman", @customer1.name)
  end

  def test_remove_cash_from_customer_wallet()
    assert_equal(48.50, @customer1.remove_cash_from_wallet(@drink1.price))
  end

  def test_customer_can_get_drink()
    @customer1.add_drink(@drink1)
    assert_equal(1, @customer1.drink_count())
  end

  def test_get_customer_age()
    assert_equal(45, @customer1.age)
  end

  def test_how_drunk_is_a_customer()
    @customer1.add_drink(@drink1)
    @customer1.add_drink(@drink1)
    @customer1.add_drunkenness_level()
    assert_equal(2, @customer1.drunkenness)
  end

end
