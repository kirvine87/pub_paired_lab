class Pub

  attr_reader :name
  attr_accessor :till


  def initialize(name, till)
    @name = name
    @till = till
    @drinks = []
  end

  def increase_till_cash(drink)
    @till += drink
  end

  def sell_drink(customer, drink)
    customer.remove_cash_from_wallet(drink.price)
    increase_till_cash(drink.price)
    customer.add_drink(drink)
  end

end
