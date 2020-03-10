require 'terminal-table'
require 'csv'

def fruits_veggies
    puts "Please choose from the following options\n
    0. Go back to Menu\n
    1. Fruits\n
    2. Veggies\n"
    choice_fv = gets.to_i
    if choice_fv == 0
        system("clear")
        menu
    end
end

def meat_sf_deli
    puts "Please choose from the following options\n
    0. Go back to Menu\n
    1. Meat\n
    2. Seafood\n
    3. Deli"
    choice_msd = gets.to_i
    if choice_msd == 0
        system("clear")
        menu
    end
end 

def drinks
    puts "Please choose from the following options\n
    0. Go back to Menu\n
    1. Fizzy drinks\n
    2. Health drinks\n
    3. "
    choice_drinks = gets.to_i
    if choice_drinks == 0
        system("clear")
        menu
    end
end

def pantry
    puts "Please choose from the following options\n
    0. Go back to Menu\n
    1. Breakfast\n
    2. Herbs and spice\n
    3. Oils and venegars"
    choice_pantry = gets.to_i
    if choice_pantry == 0
        system("clear")
        menu
    end
end

def international_food
    puts "Please choose from the following options\n
    0. Go back to Menu\n
    1. Indian\n
    2. Asian\n
    3. Mexican\n
    4. Mediterranean\n
    5. Kosher"
    choice_intfds = gets.to_i
    if choice_intfds == 0
        system("clear")
        menu
    end
end

def menu
   puts "
    Welcome to the Kols\n
    Please choose from the following options (1-6)\n
    1. Fruits and Vegetables\n
    2. Meat, Seafood and Deli\n
    3. Drinks\n
    4. Pantry\n
    5. International food\n
    6. Exit"

    choice_menu = gets.to_i
    puts "You have chosen #{choice_menu}"

    case choice_menu
    when choice_menu = 1
        system("clear")
        fruits_veggies
    when choice_menu = 2
        system("clear")
        meat_sf_deli
    when choice_menu = 3
        system("clear")
        drinks
    when choice_menu = 4
        system("clear")
        pantry
    when choice_menu = 5
        system("clear")
        international_food
    when choice_menu = 6
        exit
    else
        puts "wrong input"
    end
end

menu

# exit = false