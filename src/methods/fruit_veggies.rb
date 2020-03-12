require_relative 'add_to_cart'

def fruits_veggies
    exit = false
    while !exit
        puts "Please choose from the following options\n
        0. Go back to Menu\n
        1. Fruits\n
        2. Veggies\n"

        choice = gets.chomp
        case choice
        when "0"
            return
        when "1"
            add_to_cart("fruit")
        when "2"
            add_to_cart("veg")
        else
            puts "input invalid"
        end
    end
end