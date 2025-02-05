import 'package:flutter/material.dart';
import 'package:dio/dio.dart';

class PokemonDetailPage extends StatefulWidget {
  final String id;
  const PokemonDetailPage({Key? key, required this.id}) : super(key: key);

  @override
  _PokemonDetailPageState createState() => _PokemonDetailPageState();
}

class _PokemonDetailPageState extends State<PokemonDetailPage> {
  Map<String, dynamic>? pokemonData;
  bool isLoading = true;
  final Dio dio = Dio();

  @override
  void initState() {
    super.initState();
    fetchPokemonDetails();
  }

  Future<void> fetchPokemonDetails() async {
    try {
      final response = await dio.get('https://pokeapi.co/api/v2/pokemon/${widget.id}');
      setState(() {
        pokemonData = response.data;
        isLoading = false;
      });
    } catch (e) {
      setState(() {
        isLoading = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(pokemonData?["name"]?.toUpperCase() ?? "Detalles"),
        backgroundColor: const Color.fromARGB(255, 103, 244, 100),
      ),
      body: isLoading
          ? const Center(child: CircularProgressIndicator())
          : Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.network(
                    "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/${widget.id}.png",
                    width: 180,
                    height: 180,
                  ),
                  const SizedBox(height: 20),
                  Text(
                    "Nombre: ${pokemonData?["name"].toUpperCase()}",
                    style: const TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      color: Colors.black87,
                    ),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    "Altura: ${pokemonData?["height"]} dm",
                    style: const TextStyle(fontSize: 18, color: Colors.black54),
                  ),
                  Text(
                    "Peso: ${pokemonData?["weight"]} hg",
                    style: const TextStyle(fontSize: 18, color: Colors.black54),
                  ),
                  const SizedBox(height: 20),
                  Text(
                    "Tipos: ${pokemonData?["types"].map((t) => t["type"]["name"]).join(", ")}",
                    style: const TextStyle(fontSize: 18, color: Colors.black54),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    "Habilidades: ${pokemonData?["abilities"].map((a) => a["ability"]["name"]).join(", ")}",
                    style: const TextStyle(fontSize: 18, color: Colors.black54),
                  ),
                ],
              ),
            ),
    );
  }
}
