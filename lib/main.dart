import 'package:flutter/material.dart';
import 'package:flutter_components/screens/screens.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Material App',
        initialRoute: 'home',
        routes: {
          'home': (context) => const HomeScreen(),
          'listview1': (context) => const Listview1Screen(),
          'listview2': (context) => const Listview2Screen(),
          'alert': (context) => const AlertScreen(),
          'card': (context) => const CardScreen(),
        },
        onGenerateRoute: (settings) {
          print(settings);
          return MaterialPageRoute(
            builder: (context) => const AlertScreen(),
          );
        });
  }
}
