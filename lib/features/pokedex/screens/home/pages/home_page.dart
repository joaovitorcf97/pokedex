import 'package:flutter/material.dart';
import 'package:pokedex/common/models/pokemon.dart';
import 'package:pokedex/features/pokedex/screens/details/container/detail_container.dart';

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
      body: ListView.builder(
        itemCount: list.length,
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            onTap: () => onItemTap(
              '/details',
              DetailArguments(
                name: list[index].name,
              ),
            ),
            title: Text(list[index].name),
          );
        },
      ),
    );
  }
}
