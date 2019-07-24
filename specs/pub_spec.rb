require('minitest/autorun')
require('minitest/rg')
require_relative('../pub.rb')

class PubTest < MiniTest::Test

  def setup()
    @pub = Pub.new("Spoons", 200.00)
  end

  def test_get_pub_name()
    assert_equal("Spoons", @pub.name)
  end

  def test_how_much_cash_is_in_till()
    assert_equal(200.00,@pub.till)
  end 
end
