require 'json'
require 'text-table'
require_relative 'cart'


def add_to_cart(category)
    array = JSON.parse(File.read 'data/inventory.json')

    puts array[category].to_table(:first_row_is_head => true) # Converts an array to a table  
    exit = false
    puts "Enter the Item ID to add to the cart\n
    choose 0 for Exit"
    item_length = array[category].length.to_i
    while !exit
        choice = gets.to_i
        if choice <= item_length-1 && choice != 0
            puts "please enter the quantity: "
            qty = gets.to_i
            item = array[category][choice]
            @cart << [item[0], item[1], item[2].to_f * qty, qty]
            puts "#{item[1]} has been added to the cart"
        elsif choice == 0
            return
        else 
            puts 'invalid input'
        end
    end
end