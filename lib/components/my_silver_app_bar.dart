import 'package:flutter/material.dart';

class MySilverAppBar extends StatelessWidget {
  final Widget child;
  final Widget title;
  const MySilverAppBar({super.key, required this.child, required this.title});

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      //The size of the app bar when it is fully expanded.
      expandedHeight: 340,
      //Defines the height of the app bar when it is collapsed.
      collapsedHeight: 120,
      //the user will need to scroll near the top of the scroll view to reveal the app bar.
      //càd quand c'est sur faux alors il faut scroll jusqu'à tout en haut pour le app bar apparait
      //sinon quand c'est sur vrai
      //Whether the app bar should become visible as soon as the user scrolls towards the app bar.
      //càd dès l'instant où on scroll vers le haut alors l'app bar apparait
      floating: false,
      //l'appbar sera toujours visible
      pinned: true,
      actions: [
        //cart button
        IconButton(
          onPressed: () {},
          icon: const Icon(Icons.shopping_cart),
        ),
      ],
      backgroundColor: Theme.of(context).colorScheme.background,
      foregroundColor: Theme.of(context).colorScheme.inversePrimary,
      centerTitle: true,
      title: const Text("Sunset dinner"),
      //La propriété "flexibleSpace" dans la classe "SliverAppBar"
      //de Flutter est utilisée pour spécifier un widget
      //qui peut se rétrécir et s'étendre en fonction des mouvements
      //de défilement de la liste associée.
      //Elle est souvent utilisée pour créer des effets visuels dynamiques,
      //comme des images d'arrière-plan qui s'étendent
      //lorsque l'utilisateur fait défiler la liste vers le haut, par exemple.
      flexibleSpace: FlexibleSpaceBar(
        title: title,
        centerTitle: true,
        titlePadding: const EdgeInsets.only(
          left: 0,
          right: 0,
          top: 0,
        ),
        background: Padding(
          padding: const EdgeInsets.only(bottom: 50.0),
          child: child,
        ),
        expandedTitleScale: 1,
      ),
    );
  }
}
