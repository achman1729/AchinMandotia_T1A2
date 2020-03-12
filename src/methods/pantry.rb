require_relative 'add_to_cart'

def pantry (shopping_cart)
    exit = false
    while !exit
        system("clear")
        puts "Please choose from the following options\n
        0. Go back to Menu\n
        1. Breakfast\n
        2. Snacks\n
        3. Confectionary\n
        4. Health Foods\n
        5. Baking\n
        6. Oils and Vinegars\n
        7. Sauces"
        

        choice = gets.chomp
        case choice
        when "0"
            exit = true
        when "1"
            system("clear")
            shopping_cart = add_to_cart(shopping_cart, "breakfast")
        when "2"
            system("clear")
            shopping_cart = add_to_cart(shopping_cart, "snacks")
        when "3"
            system("clear")
            shopping_cart = add_to_cart(shopping_cart, "confectionary")
        when "4"
            system("clear")
            shopping_cart = add_to_cart(shopping_cart, "healthFoods")
        when "5"
            system("clear")
            shopping_cart = add_to_cart(shopping_cart, "baking")
        when "6"
            system("clear")
            shopping_cart = add_to_cart(shopping_cart, "oilsAndVinegars")
        when "7"
            system("clear")
            shopping_cart = add_to_cart(shopping_cart, "sauces")
        else
            puts "input invalid"
        end
    end
    return shopping_cart
end