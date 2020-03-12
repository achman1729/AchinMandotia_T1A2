require 'text-table'
require 'csv'

@cart = []    # Entering heading for the Cart
@cart << ['item ID', 'Item', 'Price', 'QTY']

def cart
    
    total = 0
    for i in 0..@cart.length - 1    # Row
    total += @cart[i][2].to_f.round(2)
    end

    @cart << ["",'total', total, ""]    #adding the footer of the cart
    CSV.open("cart.csv", "wb") do |csv|    # create a CSV file with a cart array
        for i in 0..@cart.length - 1
        csv << @cart[i]
        end
    end

    cart = CSV.read("cart.csv")   # read from a CSV file and add it to an array

    puts cart.to_table(:first_row_is_head => true, :last_row_is_foot => true)
end