import 'package:flutter/material.dart';
import 'package:food_delivery/components/my_current_location.dart';
import 'package:food_delivery/components/my_description_box.dart';
import 'package:food_delivery/components/my_drawer.dart';
import 'package:food_delivery/components/my_food_tile.dart';
import 'package:food_delivery/components/my_silver_app_bar.dart';
import 'package:food_delivery/components/my_tab_bar.dart';
import 'package:food_delivery/models/food.dart';
import 'package:food_delivery/models/restaurant.dart';
import 'package:provider/provider.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  //
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    //check le fichier my_tab_bar aussi
    //initialize le tabController
    _tabController =
        TabController(length: FoodCategory.values.length, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  //sort out and return a list of food items that belong to a specific category
  List<Food> _filterMenuByCategory(FoodCategory category, List<Food> fullMenu) {
    //dans la liste passé en param
    //je recupere chaque Food dont la propriete category est egal a la category
    //passé en param puis
    //je cree une nouvelle liste qui aura que des food de la category passé en param
    return fullMenu.where((food) => food.category == category).toList();
  }

  //return a list of food in given category
  List<Widget> getFoodInThisCategory(List<Food> fullMenu) {
    //Pour chaque FoodCategory il fait une ListView
    //le return de la funct getFoodInThisCategory
    return FoodCategory.values.map((category) {
      //initialize var categoryMenu
      //category : vient de FoodCategory.values.map((category)
      //fullMenu : vient de getFoodInThisCategory(List<Food> fullMenu)
      List<Food> categoryMenu = _filterMenuByCategory(category, fullMenu);
      //le return de la funct anonyme de FoodCategory.values.map((category){}
      return ListView.builder(
          padding: EdgeInsets.zero,
          //Cela signifie que même si le contenu dépasse la taille de l'écran,
          //l'utilisateur ne pourra pas faire défiler la ListView.
          physics: const NeverScrollableScrollPhysics(),
          itemCount: categoryMenu.length,
          itemBuilder: (context, index) {
            final categoryMenuItem = categoryMenu[index];
            //le return de la funct anonyme de ListView.builder
            return MyFoodTile(
              food: categoryMenuItem,
              onTap: () {},
            );
          });
    }).toList(); //donc on a une liste de ListView
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const MyDrawer(),
      body: NestedScrollView(
          headerSliverBuilder: (context, innerBoxIsScrolled) => [
                //SilverAppbar
                MySilverAppBar(
                  //Là où il y a les nom ou icone des tabs
                  title: MyTabBar(tabController: _tabController),
                  //
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      //equivalent de : hr
                      Divider(
                        indent: 25,
                        endIndent: 25,
                        color: Theme.of(context).colorScheme.secondary,
                      ),
                      //current location
                      const MyCurrentLocation(),
                      //description box
                      const MyDescriptionBox()
                    ],
                  ),
                ),
              ],
          body: Consumer<Restaurant>(
            builder: (context, restaurant, child) => TabBarView(
              controller: _tabController,
              /*children: [
            //premier widget sera pour le 1er tab
            ListView.builder(
                itemCount: 5,
                itemBuilder: (context, index) {
                  return;
                }),
            //2e widget sera pour le 2e tab
            ListView.builder(
                itemCount: 5,
                itemBuilder: (context, index) {
                  return;
                }),
            //3e widget sera pour le 3e tab
            ListView.builder(
                itemCount: 5,
                itemBuilder: (context, index) {
                  return;
                }),
            //4e widget sera pour le 4e tab
            ListView.builder(
                itemCount: 5,
                itemBuilder: (context, index) {
                  return;
                }),
            //5e widget sera pour le 5e tab
            ListView.builder(
                itemCount: 5,
                itemBuilder: (context, index) {
                  return;
                }),
          ],*/
              children: getFoodInThisCategory(restaurant.menu),
            ),
          )),
    );
  }
}
