import 'package:flutter/material.dart';

class Search extends StatelessWidget {
  final dummy = ['Chest', 'Biceps', 'Legs', 'Back', 'Stomach'];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
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
    );
  }
}
