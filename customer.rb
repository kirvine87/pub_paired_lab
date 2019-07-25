require('pry-byebug')
class Customer
  
  attr_reader :name, :cash, :age, :drunkenness

  def initialize(name, cash, age, drunkenness)
    @name = name
    @cash = cash
    @cust_drink = []
    @age = age
    @drunkenness = drunkenness
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

  def add_drunkenness_level()
    for drink in @cust_drink

      #as customer drinks, alcohol level increases
      @drunkenness += drink.alcohol_level
    end
  end


end
