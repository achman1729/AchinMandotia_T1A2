require_relative 'add_to_cart'

def international_foods(shopping_cart)
    exit = false
    while !exit
        puts "Please choose from the following options\n
        0. Go back to Menu\n
        1. Asian\n
        2. Indian\n
        3. Mexican\n
        4. Kosher\n
        5. European"

        choice = gets.chomp
        case choice
        when "0"
            return
        when "1"
            system("clear")
            shopping_cart = add_to_cart(shopping_cart, "asian")
        when "2"
            system("clear")
            shopping_cart = add_to_cart(shopping_cart, "indian")
        when "3"
            system("clear")
            shopping_cart = add_to_cart(shopping_cart, "mexican")
        when "4"
            system("clear")
            shopping_cart = add_to_cart(shopping_cart, "kosher")
        when "5"
            system("clear")
            shopping_cart = add_to_cart(shopping_cart, "european")
        else
            puts "input invalid"
        end
    end
    return shopping_cart
end