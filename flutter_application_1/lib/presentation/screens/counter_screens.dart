import 'package:flutter/material.dart';

class CounterScreen extends StatefulWidget {
  const CounterScreen({super.key});

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  int clickCounter = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Contador'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(

              'Click${clickCounter == 1 ? '' : 's'}',              
              // (clickCounter == 1 )
              //         ? 'Click'
              //         : 'Clicks',

              style: const TextStyle(
                fontSize: 50,
              ),
            ),
            Text(
              '$clickCounter',
              style:
                  const TextStyle(fontSize: 160, fontWeight: FontWeight.bold),
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // setState(() {
          //   clickCounter++;
          // });

          clickCounter++;
          setState(() {});
        },
        child: const Icon(Icons.plus_one_sharp),
      ),
    );
  }
}
