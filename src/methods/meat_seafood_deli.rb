require_relative 'add_to_cart'

def meat_sf_deli
    exit = false
    while !exit
        puts "Please choose from the following options\n
        0. Go back to Menu\n
        1. Meat\n
        2. Seafood\n
        3. Deli"

        choice = gets.chomp
        case choice
        when "0"
            return
        when "1"
            add_to_cart("meat")
        when "2"
            add_to_cart("seafood")
        when "3"
            add_to_cart("deli")
        else
            puts "input invalid"
        end
    end
end