import 'package:flutter/material.dart';

class ScrolledTypes extends StatefulWidget {
  @override
  _ScrolledTypesState createState() => _ScrolledTypesState();
}

class _ScrolledTypesState extends State<ScrolledTypes> {
  final dummy = ['Chest', 'Biceps', 'Legs', 'Back', 'Stomach'];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: SizedBox(
        height: 60,
        child: ListView.builder(
          padding: EdgeInsets.all(5),
          scrollDirection: Axis.horizontal,
          itemCount: dummy.length,
          itemBuilder: (context, index) {
            return Container(
              alignment: Alignment.center,
              margin: EdgeInsets.symmetric(horizontal: 8),
              padding: EdgeInsets.symmetric(horizontal: 10),
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.grey,
                  width: 2,
                ),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Text(
                dummy[index],
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 19,
                  fontWeight: FontWeight.bold,
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
