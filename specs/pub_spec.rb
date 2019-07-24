require('minitest/autorun')
require('minitest/rg')
require_relative('../pub.rb')
require_relative('../customer.rb')
require_relative('../drink.rb')

class PubTest < MiniTest::Test

  def setup()
    @pub = Pub.new("Spoons", 200.00)
    @drink1 = Drink.new("Jack D and Coke", 3.50)
  end

  def test_get_pub_name()
    assert_equal("Spoons", @pub.name)
  end

  def test_how_much_cash_is_in_till()
    assert_equal(200.00,@pub.till)
  end

  def test_increse_cash_in_till()
    assert_equal(203.50, @pub.increase_till_cash(@drink1.price))
  end


end
