import 'package:flutter/material.dart';
import 'package:food_delivery/models/food.dart';

class CartItem {
  Food food;
  List<Addon> selectedAddons;
  int quantity;

  CartItem({
    required this.food,
    required this.selectedAddons,
    this.quantity = 1,
  });

  //autre syntaxe d'un getter en dart
  double get totalPrice {
    //0 : C'est la valeur initiale pour l'accumulateur sum.
    //(sum, addon) => sum + addon.price : C'est une fonction anonyme, qui prend 2 param
    //sum : l'accumulateur qui maintient la somme actuelle des prix des addons.
    //addon : l'objet courant de la liste selectedAddons.
    //L'expression entière selectedAddons.fold(0, (sum, addon) => sum + addon.price)
    //commence avec une somme initiale de 0
    //et ajoute successivement le prix de chaque addon dans la liste selectedAddons.
    double addonsPrice =
        selectedAddons.fold(0, (sum, addon) => sum + addon.price);
    return (food.price + addonsPrice) * quantity;
  }
}
