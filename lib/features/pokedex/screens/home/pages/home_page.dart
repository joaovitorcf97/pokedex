import 'package:flutter/material.dart';
import 'package:pokedex/common/models/pokemon.dart';
import 'package:pokedex/features/pokedex/screens/details/container/detail_container.dart';
import 'package:pokedex/features/pokedex/screens/home/pages/widgets/pokemon_item_widget.dart';

class HomePage extends StatelessWidget {
  final List<Pokemon> list;
  final Function(String, DetailArguments) onItemTap;

  const HomePage({
    Key? key,
    required this.list,
    required this.onItemTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: Text(
          'Pokedex',
          style: TextStyle(
            color: Colors.black,
            fontSize: 26,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.menu,
              color: Colors.black,
            ),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
        child: GridView.count(
          crossAxisCount: 2,
          crossAxisSpacing: 16,
          mainAxisSpacing: 16,
          children: list
              .map(
                (e) => PokemonItemWidget(
                  pokemon: e,
                  onTap: onItemTap,
                ),
              )
              .toList(),
        ),
      ),
    );
  }
}
