import 'package:pokedex_flutter/routes.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // Application name
      title: 'Flutter Hello World',
      // Application theme data, you can set the colors for the application as
      // you want
      theme: ThemeData(
        // useMaterial3: false,
        primarySwatch: Colors.red,
      ),
      routes: appRoutes,
      initialRoute: "pokedex",
      // A widget which will be started on application startup
      //home: HomePage(),
    );
  }
}
