require_relative 'add_to_cart'

def drinks
    exit = false
    while !exit
        puts "Please choose from the following options\n
        0. Go back to Menu\n
        1. Soft Drinks\n
        2. Health Drinks\n
        3. Coffee"

        choice = gets.chomp
        case choice
        when "0"
            return
        when "1"
            add_to_cart("softDrinks")
        when "2"
            add_to_cart("healthDrinks")
        when "3"
            add_to_cart("coffee")
        else
            puts "input invalid"
        end
    end
end