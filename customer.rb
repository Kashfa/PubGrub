class Customer

  attr_reader :name, :wallet, :age, :drunkeness_level

  def initialize(name, wallet, age, drunkeness_level)
    @name = name
    @wallet = wallet
    @age = age
    @drunkeness_level = 0
  end

  def buys_drink(drink)
    # wallet
    # drink (of type drink)
    @wallet -= drink.price()
  end

  def check_age()
    return @age >= 18
      # if @age >= 18
      #   return true
      # end
  end

  def alcohol_level(drink)
    @drunkeness_level += drink.alcohol_level()
  end

  def check_if_drunk()
    return @drunkeness_level >= 3
    # if @drunkeness_level >= 3
    #   return "Get Out You Drunk!"
    # else
    #   return "Have another drink"
    # end
  end
 def rejuvenation_level(food)
   if @drunkeness_level != 0
     return @drunkeness_level -= food.rejuvenation_level()
   end
 end

end
