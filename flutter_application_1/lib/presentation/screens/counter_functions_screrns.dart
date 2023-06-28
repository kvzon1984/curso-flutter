import 'package:flutter/material.dart';

class CounterFucntionsScreen extends StatefulWidget {
  const CounterFucntionsScreen({super.key});

  @override
  State<CounterFucntionsScreen> createState() => _CounterFucntionsScreenState();
}

class _CounterFucntionsScreenState extends State<CounterFucntionsScreen> {
  int clickCounter = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          // leading: IconButton(
          //   icon: const Icon(Icons.refresh_rounded),
          //   onPressed: () {  },
          // ),
          actions: [
            IconButton(
              icon: const Icon(Icons.refresh_rounded),
              onPressed: () {
                setState(() {
                  clickCounter = 0;
                });
              },
            ),
          ],
          title: const Text('Counter functions screens'),
          centerTitle: true,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                '$clickCounter',
                style:
                    const TextStyle(fontSize: 160, fontWeight: FontWeight.bold),
              ),
              Text(
                'Click${clickCounter == 1 ? '' : 's'}',
                // (clickCounter == 1 )
                //         ? 'Click'
                //         : 'Clicks',

                style: const TextStyle(
                  fontSize: 50,
                ),
              )
            ],
          ),
        ),
        floatingActionButton:
            Column(mainAxisAlignment: MainAxisAlignment.end, children: [
          MiBotton(
            icon: Icons.refresh_rounded,
            onPressed: () => {clickCounter = 0, setState(() {})},
          ),
          const SizedBox(
            height: 25,
          ),
          MiBotton(
            onPressed: () => {
              setState(() {
                if (clickCounter == 0) return;
                clickCounter--;
              })
            },
            icon: Icons.exposure_minus_1_outlined,
          ),
          const SizedBox(
            height: 25,
          ),
          MiBotton(
            onPressed: () => {
              setState(() {
                clickCounter++;
              })
            },
            icon: Icons.plus_one,
          ),
        ]));
  }
}

class MiBotton extends StatelessWidget {
  final IconData icon;
  final VoidCallback? onPressed;

  const MiBotton({
    super.key,
    required this.icon,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      // shape: const StadiumBorder(),
      onPressed: onPressed,
      child: Icon(icon),
    );
  }
}
