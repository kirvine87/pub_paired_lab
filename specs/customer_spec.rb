require('minitest/autorun')
require('minitest/rg')
require_relative('../customer.rb')

class CustomerTest < MiniTest::Test
  def setup()
    @customer = ("Pete", 50)
  end
end
