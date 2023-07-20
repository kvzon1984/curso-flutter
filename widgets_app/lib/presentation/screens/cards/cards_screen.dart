import 'package:flutter/material.dart';

import 'cards_types.dart';

const cards = <Map<String,dynamic>>[

  {'elevation': 0.0, 'label': 'Elevation 0'},
  {'elevation': 1.0, 'label': 'Elevation 1'},
  {'elevation': 2.0, 'label': 'Elevation 2'},
  {'elevation': 3.0, 'label': 'Elevation 3'},
  {'elevation': 4.0, 'label': 'Elevation 4'},
  {'elevation': 5.0, 'label': 'Elevation 5'},
];

class CardsScreen extends StatelessWidget {

  static const String name = 'cards_screen';
  const CardsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cards Screens'),
      ),
      body: const _CardsView(),
    );
  }
}

class _CardsView extends StatelessWidget {
  const _CardsView();

  @override
  Widget build(BuildContext context) {

    return SingleChildScrollView(
      child: Column(
        children: [
          ...cards.map(
            (card) => CardType1(elevation: card['elevation'], label: card['label'],)
          ),
          ...cards.map(
            (card) => CardType2(elevation: card['elevation'], label: card['label'],)
          ),
          ...cards.map(
            (card) => CardType3(elevation: card['elevation'], label: card['label'],)
          ),
          ...cards.map(
            (card) => CardType4(elevation: card['elevation'], label: card['label'],)
          ),
          const SizedBox(height: 25,)

        ],
      ),
    );
  }
}

