import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pokedex/model/pokemon_model.dart';
import 'package:pokedex/services/pokedex_api.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late Future<List<PokemonModel>> _pokemonListFuture;

  @override
  void initState() {
    super.initState();
    _pokemonListFuture = PokeApi.getPokemonData();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pokedex'),
      ),
      body: FutureBuilder<List<PokemonModel>>(
        future: _pokemonListFuture,
        builder: (context, snapshot) {
          if(snapshot.hasData){
            List<PokemonModel> pokemonList = snapshot.data!;
            return ListView.builder(
              itemCount: pokemonList.length,
              itemBuilder: (context, index){
                var pokemon = pokemonList[index];
                return ListTile(
                  title: Text(pokemon.name.toString()),
                );
              },
            );

          }else if(snapshot.hasError){
            return Center(
              child: Text('Error: ${snapshot.error}'),
            );
          }
          else{
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
        },
      ),
    );
  }
}