import 'package:flutter/material.dart';
import 'package:pokedex_flutter/screens/landing_page.dart';
import 'package:pokedex_flutter/screens/home-page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Pokédex Móvil',
      theme: ThemeData(
        primarySwatch: Colors.red,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      routes: {
        "/": (context) => const LandingPage(),
        "/home": (context) => const HomePage(),
      },
      initialRoute: '/',
    );
  }
}
