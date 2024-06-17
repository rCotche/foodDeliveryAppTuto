import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:food_delivery/models/cart_item.dart';
import 'package:food_delivery/models/food.dart';
import 'package:intl/intl.dart';

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

  //user cart
  final List<CartItem> _cart = [];

  //delivery adress (which user can change/update)
  String _deliveryAdress = '6901 hollywood blv';

  /**
   * G E T T E R S
   */

  List<Food> get menu => _menu;
  List<CartItem> get cart => _cart;
  String get deliveryAdress => _deliveryAdress;

  /**
   * O P E R A T I O N S
   */

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
          const ListEquality().equals(item.selectedAddons, selectedAddons);

      return isSameFood && isSameAddons;
    });

    //if already exist, increase its quantity
    if (cartItem != null) {
      cartItem.quantity++;
    }
    //otherwise, add a new cart item to the cart
    else {
      _cart.add(
        CartItem(
          food: food,
          selectedAddons: selectedAddons,
        ),
      );
    }
    notifyListeners();
  }

  //remove to cart
  void removeFromCart(CartItem cartItem) {
    //The first index of [element] in this list.
    //revoi l'index du premier element qui correspond
    //regarde dans la liste _cart et cherche si dans la liste il y a cartItem
    //Le premier elment qui correspond à cartItem dans la liste il renvoi l'index de l'element dans la liste
    int cartIndex = _cart.indexOf(cartItem);

    //si il a trouvé quelque chose, il renvoie l'index sinon il renvoi -1
    if (cartIndex != -1) {
      //si la quantité est strictement sup a 1
      //juste on derease la quantité
      if (_cart[cartIndex].quantity > 1) {
        _cart[cartIndex].quantity--;
      } else {
        //Removes the object at position [index] from this list.
        _cart.removeAt(cartIndex);
      }
    }
    notifyListeners();
  }

  //get total price of the cart
  double getTotalPrice() {
    double total = 0.0;

    //Pour chaque cartItem dans _cart
    for (CartItem cartItem in _cart) {
      double itemTotal = cartItem.food.price;

      for (Addon addon in cartItem.selectedAddons) {
        itemTotal += addon.price;
      }
      total += itemTotal * cartItem.quantity;
    }

    return total;
  }

  //get total numbers of item in the cart
  int getTotalItemCount() {
    int totalItemCount = 0;

    for (CartItem cartItem in _cart) {
      totalItemCount += cartItem.quantity;
    }

    return totalItemCount;
  }

  //clear cart
  void clearCart() {
    _cart.clear();
    notifyListeners();
  }

  //update delivery adress
  void updateDeliveryAdress(String adress) {
    _deliveryAdress = adress;
    notifyListeners();
  }
  /**
   * H E L P E R S
   */

  //generate a receipt
  String displayCartReceipe() {
    final receipt = StringBuffer();
    receipt.writeln("Here's your receipt.");
    receipt.writeln();

    // format the date to include up the seconds only
    String formattedDate =
        DateFormat("dd-MM-yyy HH:mm:ss").format(DateTime.now());
    receipt.writeln(formattedDate);
    receipt.writeln();
    receipt.writeln("----------");

    //
    for (final cartItem in _cart) {
      receipt.writeln(
          "${cartItem.quantity} x ${cartItem.food.name} - ${_formatPrice(cartItem.food.price)}");
      if (cartItem.selectedAddons.isNotEmpty) {
        receipt.writeln(" Add-ons: ${_formatAddons(cartItem.selectedAddons)}");
      }
      receipt.writeln();
    }
    receipt.writeln("----------");
    receipt.writeln();
    receipt.writeln("Total items: ${getTotalItemCount()}");
    receipt.writeln("Total price: ${_formatPrice(getTotalPrice())}");
    receipt.writeln();
    receipt.writeln("Deliver to: $deliveryAdress");
    //
    return receipt.toString();
  }

  //format double value to money
  String _formatPrice(double price) {
    return "\$${price.toStringAsFixed(2)}";
  }

  //format list of addons into a string summary
  String _formatAddons(List<Addon> addons) {
    //join(", ") : Converts each element to a [String] and concatenates the strings
    return addons
        .map((addon) => "${addon.name} (${_formatPrice(addon.price)})")
        .join(", ");
  }
}
