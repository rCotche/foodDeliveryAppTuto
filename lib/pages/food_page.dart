import 'package:flutter/material.dart';
import 'package:food_delivery/models/food.dart';

class FoodPage extends StatefulWidget {
  final Food food;
  const FoodPage({super.key, required this.food});

  @override
  State<FoodPage> createState() => _FoodPageState();
}

class _FoodPageState extends State<FoodPage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        //Pour le moment
        Image.asset(
          "lib/images/placeholder.png",
        ),
      ],
    );
  }
}
