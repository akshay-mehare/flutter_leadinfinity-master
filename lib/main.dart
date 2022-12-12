import 'package:flutter/material.dart';

import 'features/home/screens/tabs/home_tab/home_tab_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        // primaryColor: Colors.white,
        colorScheme: const ColorScheme.light().copyWith(primary: Colors.white),
      ),
      home: const MyHomePage(),
    );
  }
}

