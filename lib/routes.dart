import 'package:flutter/material.dart';
import 'package:pokedex_flutter/screens/landing_page.dart';
import 'package:pokedex_flutter/screens/pokemon_detail.dart' as pd; // alias

import 'package:pokedex_flutter/screens/home-page.dart';

Map<String, WidgetBuilder> appRoutes = {
  "/": (context) => LandingPage(),
  "/home": (context) => const HomePage(),
};
