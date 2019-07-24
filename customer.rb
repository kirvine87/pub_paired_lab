class Customer

  attr_reader :name, :cash

  def initialize(name, cash)
    @name = name
    @cash = cash
    @cust_drink = []
  end

  def remove_cash_from_wallet(cash)
    @cash -= cash
  end

  def drink_count()
    @cust_drink.count()
  end

  def add_drink(drink)
    @cust_drink << drink
  end


end
