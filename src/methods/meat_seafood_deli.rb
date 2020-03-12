require_relative 'add_to_cart'

def meat_sf_deli(shopping_cart)
    exit = false
    while !exit
        system("clear")
        puts "Please choose from the following options\n
        0. Go back to Menu\n
        1. Meat\n
        2. Seafood\n
        3. Deli"

        choice = gets.chomp
        case choice
        when "0"
            exit = true
        when "1"
            system("clear")
            shopping_cart = add_to_cart(shopping_cart, "meat")
        when "2"
            system("clear")
            shopping_cart = add_to_cart(shopping_cart, "seafood")
        when "3"
            system("clear")
            shopping_cart = add_to_cart(shopping_cart, "deli")
        else
            puts "input invalid"
        end
    end
    return shopping_cart
end