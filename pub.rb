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

end
