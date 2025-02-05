import 'package:flutter/material.dart';
import 'package:pokedex_flutter/screens/home-page.dart';

class LandingPage extends StatefulWidget {
  const LandingPage({Key? key}) : super(key: key);

  @override
  _LandingPageState createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const HomePage()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 81, 247, 83),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              '¡Bienvenido a la Pokedex!',
              style: TextStyle(
                  fontSize: 30, fontWeight: FontWeight.bold, color: Color.fromARGB(255, 247, 3, 3)),
            ),
            const SizedBox(height: 20),
            const CircularProgressIndicator(
              color: Color.fromARGB(255, 82, 255, 94),
            ),
          ],
        ),
      ),
    );
  }
}
