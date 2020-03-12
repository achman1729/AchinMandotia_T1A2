
def cart_populate(item, array, qty)
    @cart << [item[0], item[1], item[2].to_f * qty, qty]
end