import 'package:exfit/providers/filter_provider.dart';
import 'package:flutter/material.dart';
import './screens/exercises_screen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  final filterProvider = FilterProvider();
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<FilterProvider>.value(
      value: filterProvider,
      child: MaterialApp(
        title: 'Exfit',
        theme: ThemeData(
            primarySwatch: Colors.blueGrey,
            accentColor: Colors.black45,
            errorColor: Colors.redAccent),
        initialRoute: '/',
        routes: {
          '/': (_) => ExercisesScreen(),
        },
      ),
    );
  }
}
