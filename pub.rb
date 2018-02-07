class Pub
  attr_reader :name, :till

  def initialize(name, till)
    @name = name
    @till = till
  end

  def pub_sells_drink(drink)
    @till += drink.price()
  end


end
