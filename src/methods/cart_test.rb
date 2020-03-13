require 'test/unit'
require_relative './cart_populate'
require_relative './cart'

class AddToCartTest < Test::Unit::TestCase
    attr_reader :cart
    attr_reader :item
    attr_reader :qty

    def test_cart_populate
        @item = [1, "Extra Virgin Olive Oil Classic", 6.95, "bottle"]
        @cart = []
        @qty = 3
        @cart = cart_populate(@cart, @item, @qty)
        assert_equal([[1, "Extra Virgin Olive Oil Classic", 20.85, 3]], @cart)
    end
    def test_generate_cart
        @item = [1, "Extra Virgin Olive Oil Classic", 6.95, "bottle"]
        @cart = []
        @cart = generate_cart([[1, "Extra Virgin Olive Oil Classic", 6.95, "bottle"]])
       assert_equal([[1, "Extra Virgin Olive Oil Classic", 6.95, "bottle"],
       ["", "total", 6.95, ""]], @cart) 
    end
end