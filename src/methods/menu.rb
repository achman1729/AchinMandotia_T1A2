require_relative './fruit_veggies'
require_relative './cart'
require_relative './meat_seafood_deli'
require_relative './pantry'
require_relative './international_food'
require_relative './drinks'


def menu(shopping_cart)
    exit = false
    while !exit
        system("clear")
        puts "
        Welcome to the Kols\n
        Please choose from the following options (1-6)\n
        1. Fruits and Vegetables\n
        2. Meat, Seafood and Deli\n
        3. Drinks\n
        4. Pantry\n
        5. International food\n
        6. Chekout Cart\n
        7. Exit"

        choice_menu = gets.to_i
        puts "You have chosen #{choice_menu}"
    
        case choice_menu
        when 1
            system("clear")
            shopping_cart = fruits_veggies(shopping_cart)
        when 2
            system("clear")
            shopping_cart = meat_sf_deli(shopping_cart)
        when 3
            system("clear")
           shopping_cart = drinks(shopping_cart)
        when 4
            system("clear")
            shopping_cart = pantry(shopping_cart)
        when 5
            system("clear")
            shopping_cart = international_foods(shopping_cart)
        when 6
            system("clear")
            shopping_cart = generate_cart(shopping_cart)
            exit = true
        when 7
            exit = true
        else
            puts "Invalid input"
        end
    end
    return shopping_cart
 end