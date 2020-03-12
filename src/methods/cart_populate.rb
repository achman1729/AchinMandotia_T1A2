def cart_populate(shopping_cart, item, qty)
    shopping_cart << [item[0], item[1], item[2].to_f * qty, qty]
    return shopping_cart
end