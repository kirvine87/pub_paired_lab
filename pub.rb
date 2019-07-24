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

  def sell_drink(customer, drink, age)
    if age < 18
      return "Yer no getting served, yer too young!"
    else
      customer.remove_cash_from_wallet(drink.price)
      increase_till_cash(drink.price)
      customer.add_drink(drink)
    end

  end

end
