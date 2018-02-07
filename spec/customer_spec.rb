require("minitest/autorun")
require_relative("../customer")
require_relative("../pub")
require_relative("../drink")
require_relative("../food")

class CustomerTest < MiniTest::Test

  def setup()
    @customer = Customer.new("Kashfa", 50, 25, 0)
    @customer2 = Customer.new("Olli", 5, 16, 0)
    @drink = Drink.new("Brewdog", 3, 1)
    @pub = Pub.new("The Lioness", 100)
    @food = Food.new("chips", 2, 1)
  end

  def test_customer_has_name
    assert_equal("Kashfa", @customer.name())
  end

  def test_customer_has_wallet
  assert_equal(50, @customer.wallet())
  end

  def test_buys_drink__wallet
    @customer.buys_drink(@drink)
    assert_equal(47, @customer.wallet())
  end

  def test_check_age
    result = @customer.check_age()
    assert_equal(true, result)
  end

  def test_customer_underage
    result = @customer2.check_age()
    assert_equal(false, result)
  end

  def test_drunkeness_level
  assert_equal(0, @customer.drunkeness_level())
  end

  def test_alcohol_level
    @customer.alcohol_level(@drink)
    assert_equal(1, @customer.drunkeness_level())
  end

  def test_check_if_drunk
    result = @customer.check_if_drunk()
    assert_equal(false, result)
  end

  def test_customer_is_drunk
    @customer.alcohol_level(@drink)
    @customer.alcohol_level(@drink)
    @customer.alcohol_level(@drink)
    result = @customer.check_if_drunk()
    assert_equal(true, result)
  end

  def test_customer_rejuvenation_level
    @customer.alcohol_level(@drink)
    @customer.alcohol_level(@drink)
    @customer.rejuvenation_level(@food)
    result = @customer.drunkeness_level()
    assert_equal(1, result)
  end

end
