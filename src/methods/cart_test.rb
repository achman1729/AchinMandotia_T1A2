# require 'test/unit'
# require_relative './cart_populate'

# class AddToCartTest < Test::Unit::TestCase
#     attr_reader :cart
#     attr_reader :item
#     attr_reader :qty

#     def initialize
#         @item = [
#             ["item ID", "Item", "$Price/Unit", "Unit"],
#             [1, "Extra Virgin Olive Oil Classic", 6.95, "bottle"],
#             [2, "Vegetable Oil Blended", 3.80 , "bottle"]
#         ]
#         @cart = []
#         @qty = 3
#     end
    
#     def test_cart_populate
#         @cart = cart_populate(@cart, @item, @qty)
#         assert_equal(@item, @cart)
#     end 
# end