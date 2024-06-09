import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_delivery/models/food.dart';

class MyFoodTile extends StatelessWidget {
  final Food food;
  final void Function()? onTap;
  const MyFoodTile({super.key, required this.food, this.onTap});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          child: Row(
            children: [
              //txt food detailed
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(food.name),
                    Text(food.price.toString()),
                    Text(food.description),
                  ],
                ),
              ),
              //food image
              //Image.asset(food.imagePath) c'est un widget
              /*Image.asset(
                food.imagePath,
                height: 120,
              ),*/
              //pour le moment
              Image.asset(
                "lib/images/placeholder.png",
                height: 120,
              ),
            ],
          ),
        )
      ],
    );
  }
}
