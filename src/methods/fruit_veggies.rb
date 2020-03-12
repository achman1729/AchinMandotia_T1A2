require_relative 'add_to_cart'

def fruits_veggies(shopping_cart)
    exit = false
    while !exit
        system("clear")
        puts "Please choose from the following options\n
        0. Go back to Menu\n
        1. Fruits\n
        2. Veggies\n"

        choice = gets.chomp
        case choice
        when "0"
            exit = true
        when "1"
            system("clear")
            shopping_cart = add_to_cart(shopping_cart,"fruit")
            
        when "2"
            system("clear")
            shopping_cart = add_to_cart(shopping_cart,"veg")
        else
            puts "input invalid"
        end
    end
    puts "this is fruits and veggies cart #{shopping_cart}"
    return shopping_cart
end