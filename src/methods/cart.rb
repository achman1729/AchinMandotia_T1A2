require 'text-table'
require 'csv'

def generate_cart(shopping_cart)
    total = 0
    for i in 0..shopping_cart.length-1   # Row
        total += shopping_cart[i][2].to_f
    end

    shopping_cart << ["",'total', total.round(2), ""]    #adding the footer of the cart
    CSV.open("cart.csv", "wb") do |csv|    # create a CSV file with a cart array
        for i in 0..shopping_cart.length - 1
        csv << shopping_cart[i]
        end
    end

    cart = CSV.read("cart.csv")   # read from a CSV file and add it to an array

    puts shopping_cart.to_table(:first_row_is_head => true, :last_row_is_foot => true)
    return shopping_cart
end