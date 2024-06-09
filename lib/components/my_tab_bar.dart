import 'package:flutter/material.dart';
import 'package:food_delivery/models/food.dart';

class MyTabBar extends StatelessWidget {
  final TabController tabController;
  const MyTabBar({super.key, required this.tabController});

  List<Tab> _buildCategoryTabs() {
    //FoodCategory.values :
    //Cela récupère une liste de toutes les valeurs définies dans l'enum FoodCategory.
    //.map((category) {}) :
    //Cela applique une fonction (définie entre parenthèses)
    //à chaque élément de la liste. Ici, category représente
    //chaque valeur de l'enum pendant l'itération.
    //category est un FoodCategory
    return FoodCategory.values.map((category) {
      return Tab(
        //category.toString().split('.').last prend une valeur enum,
        //la convertit en chaîne de caractères,
        //la divise en morceaux en utilisant le point comme délimiteur,
        //puis récupère le dernier morceau,
        //qui est essentiellement le nom de l'enum sans le préfixe.

        //si category est égal à FoodCategory.fruits,
        //alors category.toString().split('.').last renverra simplement "fruits".
        text: category.toString().split('.').last,
      );
    }).toList();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: TabBar(controller: tabController, tabs: _buildCategoryTabs()),
    );
  }
}
