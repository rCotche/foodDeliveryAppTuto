import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:food_delivery/services/auth/login_or_register.dart';
import 'package:food_delivery/firebase_options.dart';
import 'package:food_delivery/models/restaurant.dart';
import 'package:food_delivery/themes/theme_provider.dart';
import 'package:provider/provider.dart';

Future<void> main() async {
  //
  WidgetsFlutterBinding.ensureInitialized();
  //
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
      home: const LoginOrRegister(),
      theme: Provider.of<ThemeProvider>(context).themeData,
    );
  }
}
