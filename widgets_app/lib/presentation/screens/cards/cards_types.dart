import 'package:flutter/material.dart';

class CardType1 extends StatelessWidget {

  final String label;
  final double elevation;
  const CardType1({
    super.key,
    required this.label,
    required this.elevation
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: elevation,
      child: Padding(
        padding: const EdgeInsets.fromLTRB(10, 5, 10, 10),
        child: Column(
          children: [
            Align(
              alignment: Alignment.topRight,
              child: IconButton(
                icon: const Icon(Icons.verified_sharp),
                onPressed: () {},
              ),
            ),
            Align(
              alignment: Alignment.bottomLeft,
              child: Text(label),
            )
          ],
        )
      ),
    );
  }
}


class CardType2 extends StatelessWidget {

  final String label;
  final double elevation;
  const CardType2({
    super.key,
    required this.label,
    required this.elevation
  });

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: const BorderRadius.all( Radius.circular(12) ),
        side: BorderSide(
          color: colors.outline
        )
      ),
      elevation: elevation,
      child: Padding(
        padding: const EdgeInsets.fromLTRB(10, 5, 10, 10),
        child: Column(
          children: [
            Align(
              alignment: Alignment.topRight,
              child: IconButton(
                icon: const Icon(Icons.verified_sharp),
                onPressed: () {},
              ),
            ),
            Align(
              alignment: Alignment.bottomLeft,
              child: Text('$label - outline'),
            )
          ],
        )
      ),
    );
  }
}

class CardType3 extends StatelessWidget {

  final String label;
  final double elevation;
  const CardType3({
    super.key,
    required this.label,
    required this.elevation
  });

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    return Card(
      color: colors.surfaceVariant,
      elevation: elevation,
      child: Padding(
        padding: const EdgeInsets.fromLTRB(10, 5, 10, 10),
        child: Column(
          children: [
            Align(
              alignment: Alignment.topRight,
              child: IconButton(
                icon: const Icon(Icons.verified_sharp),
                onPressed: () {},
              ),
            ),
            Align(
              alignment: Alignment.bottomLeft,
              child: Text('$label - Filled'),
            )
          ],
        )
      ),
    );
  }
}

class CardType4 extends StatelessWidget {

  final String label;
  final double elevation;
  const CardType4({
    super.key,
    required this.label,
    required this.elevation
  });

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    return Card(
      clipBehavior: Clip.hardEdge,
      elevation: elevation,
      child: Stack(
        children: [
          Image.network(
            'https://picsum.photos/id/${ elevation.toInt() }/600/350',
            height: 350,
            fit: BoxFit.cover,
          ),
          Align(
            alignment: Alignment.topRight,
            child: Container(
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(bottomLeft: Radius.circular(20),)
              ),
              child: IconButton(
                icon: const Icon(Icons.verified_sharp),
                onPressed: () {},
              ),
            ),
          ),
        ],
      ),
    );
  }
}