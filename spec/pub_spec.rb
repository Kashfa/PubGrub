require("minitest/autorun")
require_relative("../pub")
require_relative("../drink")
require_relative("../customer")

class PubTest < MiniTest::Test

  def setup()
    @pub = Pub.new("The Lioness", 100)
    @customer = Customer.new("Kashfa", 50, 25, 0)
    @drink = Drink.new("Brewdog", 3, 1)
  end

  def test_pub_has_name
    assert_equal("The Lioness", @pub.name())
  end

  def test_pub_has_till
    assert_equal(100, @pub.till())
  end

  def test_pub_sells_drink
    @pub.pub_sells_drink(@drink)
    assert_equal(103, @pub.till())
  end


end
