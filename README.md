# Terminal Application - Koles grocery application

Create by Achin Mandotia for Coder Academy’s FastTrack Bootcamp Term One Assignment Two.

## Instructions for use of the application
This application simulates the original Coles application for shopping online. The user can follow the steps outlined below for installing the application and running it.

Please find the help file in the docs directory.

## Purpose and Scope 

This application is an attempt for replicating the basic functions of Coles online application. The target audience is anyone and everyone who wants to buy a grocery item.
This application solves the problem for planning for grocery shopping and adding it to the cart.

It allows a user to select a category of items, then choose a further subcategory and then view grocery items and choose the items they want to buy and the quantity of that item they want to buy.

The application starts with a menu for categories and waits for the user input to choose a category. The user will choose a category from the given options in the menu. The applications then shows another menu with subcategories. The user then choose the subcategories which then display the list of items in that subcategory. The application then asks for the item id of the item user would like to add to the cart. After the user enters the item id, it asks for the quantity of the chosen item. Once the user enters the quantity, it gets added to the cart.
The user can traverse between different menu and subcategories and keep adding the items until the user would like to checkout cart. Once the cart has been checkout, the application displays the cart and exits.

## Motivation
Apart from fulfilling the requirements of the assignment. I wanted to make something that is related to real world application which is being used. As this assignment was done within 3 days, keeping the time and scope in mind and my hobby for cooking, making basic feature of grocery application was motivating and interesting for me.

## Features and Functionality
The three functionality that this application has are

1. The user can traverse between different menu of categories and subcategories.
2. The user can see items in a table and add the item to the cart.
3. The user can generate the cart that shows the added items to the cart.

### Variables and the concept of variable scope
For the data storage a JSON file has been used. The JSON file contains a hash of arrays where the key is the category and the array consists of the items in the list.

A few reusable methods has been used

add_to_cart - adds an item to the cart

generate_cart - generate the cart and displays it as a table

cart_populate - is called within the add_to_cart method and populates the shopping_cart with the selected item

shopping_cart - is the array that is being passed to each reusable method

The GEMs that has been used are listed in the Gemfile

While loops has been used to stay in the and case statements has been used for options.

### Error handling
The error handling has been done implicitly via the options in the menu as the possible source of error is the user input.

## Implementation Plan

### Planning and Prioritisation

Trello was used for for planning the features and items to be added in the lists. A snapshot of the trello board can be found ! [ ](). 

Alternatively, click the link: 
https://trello.com/b/Tw2mja1n/koles-checkout-app

### Initial Code Structure
The flow chart can be found in the docs directory.

![Main Menu]()

![Fruits and vegetables menu]()

![Meat Seafood ad deli ]()

![Drinks]()

![Pantry]()

![International foods]()

### The Application Interface

![Main]()

![Menu]()

![Drinks]()

![Add to cart]()

![Generate Cart]()