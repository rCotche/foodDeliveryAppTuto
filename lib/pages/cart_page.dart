import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:food_delivery/components/my_button.dart';
import 'package:food_delivery/components/my_cart_tile.dart';
import 'package:food_delivery/models/restaurant.dart';
import 'package:provider/provider.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    //ce widget a acces au provider
    return Consumer<Restaurant>(builder: (context, restaurant, child) {
      //cart
      final userCart = restaurant.cart; //getter de la classe restaurant
      //ui
      return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text("Cart"),
          backgroundColor: Colors.transparent,
          foregroundColor: Theme.of(context).colorScheme.inversePrimary,
          actions: [
            //clear cart button
            IconButton(
              onPressed: () {
                //confirm dialog
                showDialog(
                    context: context,
                    builder: ((context) {
                      return AlertDialog(
                        title: const Text(
                          "Are you sure you want to clear the cart ?",
                        ),
                        actions: [
                          //cancel
                          TextButton(
                            onPressed: () => Navigator.pop(context),
                            child: const Text("Cancel"),
                          ),
                          //yes
                          TextButton(
                            onPressed: () {
                              Navigator.pop(context);
                              restaurant.clearCart();
                            },
                            child: const Text("Yes"),
                          ),
                        ],
                      );
                    }));
              },
              icon: const Icon(
                Icons.delete,
              ),
            ),
          ],
        ),
        body: Column(
          children: [
            //list of cart
            Expanded(
              child: Column(
                children: [
                  userCart.isEmpty
                      ? const Expanded(
                          child: Center(
                            child: Text("The cart is empty.."),
                          ),
                        )
                      : Expanded(
                          child: ListView.builder(
                              itemCount: userCart.length,
                              itemBuilder: (context, index) {
                                //individual
                                final unCartItem = userCart[index];

                                //ui
                                return MyCartTile(cartItem: unCartItem);
                              }),
                        ),
                ],
              ),
            ),
            //button to pay
            MyButton(onTap: () {}, text: "Go to checkout"),
            const SizedBox(
              height: 25,
            )
          ],
        ),
      );
    });
  }
}
