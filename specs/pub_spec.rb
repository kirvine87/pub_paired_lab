require('minitest/autorun')
require('minitest/rg')
require_relative('../pub.rb')
require_relative('../customer.rb')
require_relative('../drink.rb')

class PubTest < MiniTest::Test

  def setup()
    @pub = Pub.new("Spoons", 200.00)
    @drink1 = Drink.new("Jack D and Coke", 3.50, 2)
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

  def test_sale_of_drink_to_customer__over()
    customer = Customer.new("Bill Wyatt", 100.00, 21, 0)
    @pub.sell_drink(customer, @drink1, customer.age, customer.drunkenness)
    assert_equal(96.50, customer.cash)
    assert_equal(203.50, @pub.till)
    assert_equal(1, customer.drink_count())
  end

  def test_sale_of_drink_to_customer__under()
    customer = Customer.new("Jonny Bravo", 100.00, 17, 0)
    info = @pub.sell_drink(customer, @drink1, customer.age, customer.drunkenness)
    assert_equal(100.00, customer.cash)
    assert_equal(200.00, @pub.till)
    assert_equal(0, customer.drink_count())
    assert_equal("Yer no getting served, yer too young!", info)
  end

  def test_sale_of_drink_to_customer__drunk()
    customer = Customer.new("Jonny Bravo", 100.00, 17, 7)
    info = @pub.sell_drink(customer, @drink1, customer.age, customer.drunkenness)
    assert_equal(100.00, customer.cash)
    assert_equal(200.00, @pub.till)
    assert_equal(0, customer.drink_count())
    assert_equal("You've had enough", info)
  end

end
