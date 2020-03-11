require_relative 'fruit_veggies'

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