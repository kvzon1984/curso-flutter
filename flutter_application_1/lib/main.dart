import 'package:flutter/material.dart';
import 'package:flutter_application_1/presentation/screens/counter_functions_screrns.dart';
// import 'package:flutter_application_1/presentation/screens/counter_screens.dart';

void main() {
  runApp( const MyApp() );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        colorSchemeSeed: Colors.amber,
      ),
      home: const CounterFucntionsScreen()

    );
  }
}