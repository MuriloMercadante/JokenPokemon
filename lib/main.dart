import 'package:flutter/material.dart';

void main() {
runApp(const JoKenPokemonApp());
}

class JoKenPokemonApp extends StatelessWidget {
  const JoKenPokemonApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner:false,
      title: 'JokenPokemon',
      theme:ThemeData(useMaterial3: true),
      home: const JokenPokemonScream(),
    );
  }
}

class JokenPokemonScream extends StatefulWidget {
  const JokenPokemonScream({super.key});

  @override
  State<JokenPokemonScream> createState() =>  _JokenPokemonScreamState();
}

class  _JokenPokemonScreamState extends State <JokenPokemonScream> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orange[50],
      body:SafeArea(
        child: Column(
          children: [
            PokemonLogo()

          ],
        ),
      ),
    );
  }
}
class PokemonLogo extends StatelessWidget {
  const PokemonLogo({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 32.0),
      child: Image.asset('images/logo_pokemon.png',height: 200  ,),
    );
  }
}
