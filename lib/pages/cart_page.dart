import 'package:flutter/material.dart';
import 'package:food_delivery/models/restaurant.dart';
import 'package:provider/provider.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<Restaurant>(builder: (context, restaurant, child) {
      //cart
      final userCart = restaurant.cart; //getter de la classe restaurant
      //ui
      return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text("Cart"),
          backgroundColor: Colors.transparent,
          foregroundColor: Theme.of(context).colorScheme.inversePrimary,
        ),
        body: Column(
          children: [
            Expanded(
              child: ListView.builder(
                  itemCount: userCart.length,
                  itemBuilder: (context, index) {
                    //individual
                    final unCartItem = userCart[index];

                    //ui
                    return ListTile(
                      title: Text(unCartItem.food.name),
                    );
                  }),
            ),
          ],
        ),
      );
    });
  }
}
