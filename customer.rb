class Customer

  attr_reader :name, :cash

  def initialize(name, cash)
    @name = name
    @cash = cash
    @cust_drink = []
  end

end
