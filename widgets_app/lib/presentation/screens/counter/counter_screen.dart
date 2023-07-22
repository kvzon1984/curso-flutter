import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../providers/counter_provider.dart';
import '../../providers/theme_provider.dart';

class CounterScreen extends ConsumerWidget {
  static const name = 'counter_screen';
  const CounterScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {

    final int clickCounter = ref.watch( counterProvider );
    final bool isDarkMode = ref.watch( isDarkModeProvider );

    return Scaffold(
      appBar: AppBar(
        title: const Text('Counter Screen'),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: IconButton(
              icon: isDarkMode ?
                const Icon(Icons.dark_mode_outlined) :
                const Icon(Icons.light_mode_outlined),
              onPressed: () {
                ref.read(isDarkModeProvider.notifier).update((isDarkMode) => !isDarkMode);
              },
            ),
          ),
        ],
      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Valor: $clickCounter', style: Theme.of(context).textTheme.titleLarge),
        ]),
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            heroTag: null,
            onPressed: () {
              ref.read( counterProvider.notifier ).state--;
            },
            child: const Icon(Icons.exposure_minus_1_outlined)
          ),
          const SizedBox(height: 25,),
          FloatingActionButton(
            heroTag: null,
            onPressed: () {
              // ref.read( counterProvider.notifier ).state++;
              ref.read( counterProvider.notifier )
                .update( (state) => state + 1 );
            },
            child: const Icon(Icons.plus_one)
          ),
          const SizedBox(height: 25,),
          FloatingActionButton(
            heroTag: null,
            onPressed: () {
              // ref.read( counterProvider.notifier ).state++;
              ref.read( counterProvider.notifier )
                .update( (state) => 0);
            },
            child: const Icon(Icons.refresh)
          ),
      ]
      ),
    );
  }
}