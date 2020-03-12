require_relative 'add_to_cart'

def pantry
    exit = false
    while !exit
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
            return
        when "1"
            add_to_cart("breakfast")
        when "2"
            add_to_cart("snacks")
        when "3"
            add_to_cart("confectionary")
        when "4"
            add_to_cart("healthFoods")
        when "5"
            add_to_cart("baking")
        when "6"
            add_to_cart("oilsAndVinegars")
        when "7"
            add_to_cart("sauces")
        else
            puts "input invalid"
        end
    end
end