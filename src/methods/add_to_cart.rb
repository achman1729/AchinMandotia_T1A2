require 'json'
require 'text-table'
require_relative 'cart'
require_relative 'cart_populate'


def add_to_cart(shopping_cart, category)
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
            shopping_cart = cart_populate(shopping_cart, item, qty) #calling the method to populate to the array
            puts "#{item[1]} has been added to the cart"
        elsif choice == 0
            exit = true
        else 
            puts 'invalid input'
        end
    end
    return shopping_cart
end