require 'json'
require 'text-table'
require 'csv'
require_relative 'cart'



# puts arr_fruit["fruit"]

def fruits
    arr_fruit = JSON.parse(File.read 'data/fruit.json')
    # CSV.open("fruit.csv", "wb") do |csv|    # create a CSV file for fruits array
    #     for i in 0..arr_fruit["fruit"].length - 1
    #     csv << arr_fruit["fruit"][i]
    #     end
    # end

    # fruit = CSV.read("fruit.csv")   # read from a CSV file and add it to an array

    puts fruit.to_table(:first_row_is_head => true) # Converts an array to a table  
    exit = false
    puts "Enter the Item ID to add to the cart\n
    choose 0 for Exit"
    while !exit
        item_id = gets.to_i
        if item_id != 0
            puts "please enter the quantity: "
            qty = gets.to_i
            puts fruit.inspect
            item = arr_fruit["fruit"][item_id]
            @cart << [item[0], item[1], item[2].to_f * qty, qty]
            puts "#{item[1]} has been added to the cart"
        else
            exit = true
        end
    end
    cart
end


def fruits_veggies

    puts "Please choose from the following options\n
    0. Go back to Menu\n
    1. Fruits\n
    2. Veggies\n"

    choice_fv = gets.to_i
    case choice_fv
    when choice_fv = 0
        system("clear")
        menu
    when choice_fv = 1
        fruits
    end
end
fruits_veggies