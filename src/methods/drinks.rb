require_relative 'add_to_cart'

def drinks(shopping_cart)
    exit = false
    while !exit
        system("clear")
        puts "Please choose from the following options\n
        0. Go back to Menu\n
        1. Soft Drinks\n
        2. Health Drinks\n
        3. Coffee"

        choice = gets.chomp
        case choice
        when "0"
            exit = true
        when "1"
            system("clear")
            shopping_cart = add_to_cart(shopping_cart, "softDrinks")
        when "2"
            system("clear")
            shopping_cart = add_to_cart(shopping_cart, "healthDrinks")
        when "3"
            system("clear")
            shopping_cart = add_to_cart(shopping_cart, "coffee")
        else
            puts "input invalid"
        end
    end
    return shopping_cart
end