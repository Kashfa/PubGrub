require("minitest/autorun")
require_relative("../drink")

class DrinkTest < MiniTest::Test

  def setup()
    @drink = Drink.new("Brewdog", 3, 1)
    @drink2 = Drink.new("Stella", 4, 2)

  end

  def test_drink_has_name
    assert_equal("Brewdog", @drink.name())
  end

  def test_drink_has_price
    assert_equal(3, @drink.price())
  end

def test_alcohol_level
  assert_equal(1, @drink.alcohol_level)
end


end
