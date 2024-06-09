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
    return Scaffold(
      body: Column(
        children: [
          //food image
          //widget.food.imagePath
          //Pour le moment
          Image.asset(
            "lib/images/placeholder.png",
          ),

          //food name
          Text(widget.food.name),

          //food description
          Text(widget.food.description),

          //addons
          ListView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: widget.food.availableAddon.length,
              itemBuilder: (context, index) {
                //get individual addon
                final Addon anAddon = widget.food.availableAddon[index];
                return CheckboxListTile(value: false, onChanged: (value) {});
              }),

          //button add to cart
        ],
      ),
    );
  }
}
