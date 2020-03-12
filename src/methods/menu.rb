require_relative './fruit_veggies'
require_relative './cart'
require_relative './meat_seafood_deli'
require_relative './pantry'
require_relative './international_food'
require_relative './drinks'

def menu
    exit = false
    while !exit
        puts "
        Welcome to the Kols\n
        Please choose from the following options (1-6)\n
        1. Fruits and Vegetables\n
        2. Meat, Seafood and Deli\n
        3. Drinks\n
        4. Pantry\n
        5. International food\n
        6. Show Cart
        7. Exit"
    
        choice_menu = gets.to_i
        puts "You have chosen #{choice_menu}"
    
        case choice_menu
        when 1
            system("clear")
            fruits_veggies
        when 2
            system("clear")
            meat_sf_deli
        when 3
            system("clear")
            drinks
        when 4
            system("clear")
            pantry
        when 5
            system("clear")
            international_foods
        when 6
            cart
        when 7
            exit = true
        else
            puts "wrong input"
        end
    end
 end