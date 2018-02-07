require("minitest/autorun")
require_relative("../food")
require_relative("../customer")

class FoodTest < MiniTest::Test
  def setup()
    @food = Food.new("chips", 2, 1)
  end

  def test_food_name
    assert_equal("chips", @food.name())
  end

  def test_food_price
    assert_equal(2, @food.price())
  end

  def test_food_rejuvenation_level
    assert_equal(1, @food.rejuvenation_level())
  end

end
