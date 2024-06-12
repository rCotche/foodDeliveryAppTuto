import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:food_delivery/models/cart_item.dart';
import 'package:food_delivery/models/food.dart';

//bdd ?
class Restaurant extends ChangeNotifier {
  //list of food menu
  final List<Food> _menu = [
    //burger
    Food(
      name: "1 Classic cheeseburger",
      description:
          "a succulent beef patty, melted cheddar, crisp lettuce, ripe tomatoes, tangy pickles",
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
          "a succulent beef patty, melted cheddar, crisp lettuce, ripe tomatoes, tangy pickles",
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
          "a succulent beef patty, melted cheddar, crisp lettuce, ripe tomatoes, tangy pickles",
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
          "Our Caesar Salad features crisp romaine lettuce, crunchy croutons, and shaved Parmesan",
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
          "Our Caesar Salad features crisp romaine lettuce, crunchy croutons, and shaved Parmesan",
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
          "Our Caesar Salad features crisp romaine lettuce, crunchy croutons, and shaved Parmesan",
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

  //user cart
  final List<CartItem> _cart = [];

  // add to cart
  void addToCart(Food food, List<Addon> selectedAddons) {
    //see if there is a cart item already with the same food and selected addons

    //CartItem? :type CartItem, mais elle peut également être null (indiqué par le ?).
    //firstWhereOrNull est une méthode qui cherche le premier élément de _cart
    //qui satisfait une condition donnée.
    //Si aucun élément ne satisfait la condition,
    //elle retourne null au lieu de lancer une exception.

    //Condition de recherche :
    //bool isSameFood = item.food == food; //mm food
    //bool isSameAddons =
    //ListEquality().equals(item.selectedAddons, selectedAddons); //les 2 liste sont egales
    // return isSameFood && isSameAddons : return true si les 2 conditions son vraies
    CartItem? cartItem = _cart.firstWhereOrNull((item) {
      //check if the food item are the same
      bool isSameFood = item.food == food;
      //check if the selected addons are the same
      bool isSameAddons =
          ListEquality().equals(item.selectedAddons, selectedAddons);

      return isSameFood && isSameAddons;
    });

    //if already exist, increase its quantity
    if (cartItem != null) {
      cartItem.quantity++;
    }
  }

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
