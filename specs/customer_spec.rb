require('minitest/autorun')
require('minitest/rg')
require_relative('../customer.rb')

class CustomerTest < MiniTest::Test

  def setup()
    @customer1 = Customer.new("Pete Jakeman", 50.00)
  end

  def test_get_customer_name()
    assert_equal("Pete Jakeman", @customer1.name)
  end 

end
