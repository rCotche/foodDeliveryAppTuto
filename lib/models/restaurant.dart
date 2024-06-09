import 'package:flutter/material.dart';
import 'package:food_delivery/models/food.dart';

//bdd ?
class Restaurant extends ChangeNotifier {
  //list of food menu
  final List<Food> _menu = [
    //burger
    Food(
      name: "1 Classic cheeseburger",
      description:
          "a succulent beef patty, melted cheddar, crisp lettuce, ripe tomatoes, tangy pickles, and a toasted bun, all perfectly balanced for a mouthwatering bite.",
      imagePath:
          "https://placehold.co/600x400/png", //"lib/images/burgers/cheese_burger.png"
      price: 0.99,
      category: FoodCategory.burgers,
      //bdd ?
      availableAddon: [
        Addon(name: "Extra cheese", price: 0.99),
        Addon(name: "Bacon", price: 1.99),
        Addon(name: "Avocado", price: 2.99),
      ],
    ),
    Food(
      name: "2 Classic cheeseburger",
      description:
          "a succulent beef patty, melted cheddar, crisp lettuce, ripe tomatoes, tangy pickles, and a toasted bun, all perfectly balanced for a mouthwatering bite.",
      imagePath:
          "https://placehold.co/600x400/png", //"lib/images/burgers/cheese_burger.png"
      price: 0.99,
      category: FoodCategory.burgers,
      availableAddon: [
        Addon(name: "Extra cheese", price: 0.99),
        Addon(name: "Bacon", price: 1.99),
        Addon(name: "Avocado", price: 2.99),
      ],
    ),
    Food(
      name: "3 Classic cheeseburger",
      description:
          "a succulent beef patty, melted cheddar, crisp lettuce, ripe tomatoes, tangy pickles, and a toasted bun, all perfectly balanced for a mouthwatering bite.",
      imagePath:
          "https://placehold.co/600x400/png", //"lib/images/burgers/cheese_burger.png"
      price: 0.99,
      category: FoodCategory.burgers,
      availableAddon: [
        Addon(name: "Extra cheese", price: 0.99),
        Addon(name: "Bacon", price: 1.99),
        Addon(name: "Avocado", price: 2.99),
      ],
    ),
    //salads
    Food(
      name: "1 Caesar salad",
      description:
          "Our Caesar Salad features crisp romaine lettuce, crunchy croutons, and shaved Parmesan, all tossed in a creamy, tangy Caesar dressing, finished with a hint of fresh lemon. Perfectly refreshing and delicious!",
      imagePath:
          "https://placehold.co/600x400/png", //"lib/images/burgers/cheese_burger.png"
      price: 7.99,
      category: FoodCategory.salads,
      //bdd ?
      availableAddon: [
        Addon(name: "Grilled chicken", price: 0.99),
        Addon(name: "Anchovies", price: 1.49),
        Addon(name: "Extra parmesan", price: 1.99),
      ],
    ),
    Food(
      name: "2 Caesar salad",
      description:
          "Our Caesar Salad features crisp romaine lettuce, crunchy croutons, and shaved Parmesan, all tossed in a creamy, tangy Caesar dressing, finished with a hint of fresh lemon. Perfectly refreshing and delicious!",
      imagePath:
          "https://placehold.co/600x400/png", //"lib/images/burgers/cheese_burger.png"
      price: 7.99,
      category: FoodCategory.salads,
      //bdd ?
      availableAddon: [
        Addon(name: "Grilled chicken", price: 0.99),
        Addon(name: "Anchovies", price: 1.49),
        Addon(name: "Extra parmesan", price: 1.99),
      ],
    ),
    Food(
      name: "3 Caesar salad",
      description:
          "Our Caesar Salad features crisp romaine lettuce, crunchy croutons, and shaved Parmesan, all tossed in a creamy, tangy Caesar dressing, finished with a hint of fresh lemon. Perfectly refreshing and delicious!",
      imagePath:
          "https://placehold.co/600x400/png", //"lib/images/burgers/cheese_burger.png"
      price: 7.99,
      category: FoodCategory.salads,
      //bdd ?
      availableAddon: [
        Addon(name: "Grilled chicken", price: 0.99),
        Addon(name: "Anchovies", price: 1.49),
        Addon(name: "Extra parmesan", price: 1.99),
      ],
    ),
    //sides
    Food(
      name: "1 Sweet potato fries",
      description:
          "Crispy, golden sweet potato fries, seasoned to perfection, offering a deliciously sweet and savory crunch.",
      imagePath:
          "https://placehold.co/600x400/png", //"lib/images/burgers/cheese_burger.png"
      price: 7.99,
      category: FoodCategory.sides,
      //bdd ?
      availableAddon: [
        Addon(name: "cheese sauce", price: 0.99),
        Addon(name: "Truffle oil", price: 1.49),
        Addon(name: "Cajun spice", price: 1.99),
      ],
    ),
    Food(
      name: "2 Sweet potato fries",
      description:
          "Crispy, golden sweet potato fries, seasoned to perfection, offering a deliciously sweet and savory crunch.",
      imagePath:
          "https://placehold.co/600x400/png", //"lib/images/burgers/cheese_burger.png"
      price: 7.99,
      category: FoodCategory.sides,
      //bdd ?
      availableAddon: [
        Addon(name: "cheese sauce", price: 0.99),
        Addon(name: "Truffle oil", price: 1.49),
        Addon(name: "Cajun spice", price: 1.99),
      ],
    ),
    Food(
      name: "3 Sweet potato fries",
      description:
          "Crispy, golden sweet potato fries, seasoned to perfection, offering a deliciously sweet and savory crunch.",
      imagePath:
          "https://placehold.co/600x400/png", //"lib/images/burgers/cheese_burger.png"
      price: 7.99,
      category: FoodCategory.sides,
      //bdd ?
      availableAddon: [
        Addon(name: "cheese sauce", price: 0.99),
        Addon(name: "Truffle oil", price: 1.49),
        Addon(name: "Cajun spice", price: 1.99),
      ],
    ),
    //desserts
    Food(
      name: "1 Chocolate brownie",
      description:
          "Decadent chocolate brownies, rich and fudgy, with a perfect balance of gooey center and crispy edges.",
      imagePath:
          "https://placehold.co/600x400/png", //"lib/images/burgers/cheese_burger.png"
      price: 5.99,
      category: FoodCategory.desserts,
      //bdd ?
      availableAddon: [
        Addon(name: "Vanilla ice cream", price: 0.99),
        Addon(name: "Hot Fudge", price: 1.49),
        Addon(name: "Whpped cream", price: 1.99),
      ],
    ),
    Food(
      name: "2 Chocolate brownie",
      description:
          "Decadent chocolate brownies, rich and fudgy, with a perfect balance of gooey center and crispy edges.",
      imagePath:
          "https://placehold.co/600x400/png", //"lib/images/burgers/cheese_burger.png"
      price: 5.99,
      category: FoodCategory.desserts,
      //bdd ?
      availableAddon: [
        Addon(name: "Vanilla ice cream", price: 0.99),
        Addon(name: "Hot Fudge", price: 1.49),
        Addon(name: "Whpped cream", price: 1.99),
      ],
    ),
    Food(
      name: "3 Chocolate brownie",
      description:
          "Decadent chocolate brownies, rich and fudgy, with a perfect balance of gooey center and crispy edges.",
      imagePath:
          "https://placehold.co/600x400/png", //"lib/images/burgers/cheese_burger.png"
      price: 5.99,
      category: FoodCategory.desserts,
      //bdd ?
      availableAddon: [
        Addon(name: "Vanilla ice cream", price: 0.99),
        Addon(name: "Hot Fudge", price: 1.49),
        Addon(name: "Whpped cream", price: 1.99),
      ],
    ),
    //drinks
    Food(
      name: "1 Lemonade",
      description:
          "Decadent chocolate brownies, rich and fudgy, with a perfect balance of gooey center and crispy edges.",
      imagePath:
          "https://placehold.co/600x400/png", //"lib/images/burgers/cheese_burger.png"
      price: 2.99,
      category: FoodCategory.drinks,
      //bdd ?
      availableAddon: [
        Addon(name: "Strawberry flavor", price: 0.99),
        Addon(name: "Mint leaves", price: 1.49),
        Addon(name: "Ginger zest", price: 1.99),
      ],
    ),
    Food(
      name: "2 Lemonade",
      description:
          "Decadent chocolate brownies, rich and fudgy, with a perfect balance of gooey center and crispy edges.",
      imagePath:
          "https://placehold.co/600x400/png", //"lib/images/burgers/cheese_burger.png"
      price: 2.99,
      category: FoodCategory.drinks,
      //bdd ?
      availableAddon: [
        Addon(name: "Strawberry flavor", price: 0.99),
        Addon(name: "Mint leaves", price: 1.49),
        Addon(name: "Ginger zest", price: 1.99),
      ],
    ),
    Food(
      name: "3 Lemonade",
      description:
          "Decadent chocolate brownies, rich and fudgy, with a perfect balance of gooey center and crispy edges.",
      imagePath:
          "https://placehold.co/600x400/png", //"lib/images/burgers/cheese_burger.png"
      price: 2.99,
      category: FoodCategory.drinks,
      //bdd ?
      availableAddon: [
        Addon(name: "Strawberry flavor", price: 0.99),
        Addon(name: "Mint leaves", price: 1.49),
        Addon(name: "Ginger zest", price: 1.99),
      ],
    ),
  ];
  /**
   * G E T T E R S
   */

  List<Food> get menu => _menu;

  /**
   * O P E R A T I O N S
   */

  // add to cart

  //remove to cart

  //get total price of the cart

  //get total numbers of item in the cart

  //clear cart

  /**
   * H E L P E R S
   */

  //generate a receipt

  //format double value to money

  //format list of addons into a string summary
}
