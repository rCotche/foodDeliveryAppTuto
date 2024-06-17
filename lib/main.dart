import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:food_delivery/services/auth/auth_gate.dart';
import 'package:food_delivery/firebase_options.dart';
import 'package:food_delivery/models/restaurant.dart';
import 'package:food_delivery/themes/theme_provider.dart';
import 'package:provider/provider.dart';

Future<void> main() async {
  //WidgetsFlutterBinding est une classe qui lie le framework Flutter
  //à la plateforme sous-jacente. L'appel de ensureInitialized s'assure
  //que cette liaison est en place
  //avant que d'autres opérations ne soient effectuées.
  //Cette méthode est souvent utilisée en début de programme,
  //avant de faire appel à des fonctions asynchrones
  //ou d'utiliser des packages qui nécessitent une initialisation préalable.
  WidgetsFlutterBinding.ensureInitialized();
  //utilisée pour initialiser les services Firebase
  //dans l'application, elle est nécessaire pour configurer Firebase
  //avec les options appropriées pour la plateforme actuelle (Android, iOS, etc.).
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);

  //Ce widget fournira nos classe à tous les widgets descendants qui en ont besoin.
  runApp(MultiProvider(
    providers: [
      //theme provider
      ChangeNotifierProvider(create: (context) => ThemeProvider()),
      //restaurant provider
      ChangeNotifierProvider(create: (context) => Restaurant()),
    ],
    child: const MyApp(),
  )
      /*
    ChangeNotifierProvider(
      create: (context) => ThemeProvider(),
      child: const MyApp(),
    ),
    */
      );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const AuthGate(),
      theme: Provider.of<ThemeProvider>(context).themeData,
    );
  }
}
