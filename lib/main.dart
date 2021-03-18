import 'package:flutter/material.dart';
import './screens/exercises_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Exfit',
      theme: ThemeData(
          primarySwatch: Colors.blueGrey,
          accentColor: Colors.black45,
          errorColor: Colors.redAccent),
      initialRoute: '/',
      routes: {
        '/': (_) => ExercisesScreen(),
      },
    );
  }
}
