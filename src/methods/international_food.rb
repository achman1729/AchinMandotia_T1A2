require_relative 'add_to_cart'

def international_foods
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
            add_to_cart("asian")
        when "2"
            add_to_cart("indian")
        when "3"
            add_to_cart("mexican")
        when "4"
            add_to_cart("kosher")
        when "5"
            add_to_cart("european")
        else
            puts "input invalid"
        end
    end
end