import 'package:exfit/animations/bounce.dart';
import 'package:flutter/material.dart';

class ScrolledTypes extends StatefulWidget {
  @override
  _ScrolledTypesState createState() => _ScrolledTypesState();
}

class _ScrolledTypesState extends State<ScrolledTypes> {
  List<String> dummy = ['All', 'Chest', 'Biceps', 'Legs', 'Back', 'Stomach'];

  var _currentTap = 'Chest';

  bool _isCurrentTap(String tap) {
    return _currentTap == tap;
  }

  void _changeCurrentTap(String newMuscleGroup) {
    setState(() {
      _currentTap = newMuscleGroup;
    });
  }

  @override
  void initState() {
    super.initState();
  }

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
            return Bounce(
              onTap: () {
                _changeCurrentTap(dummy[index]);
              },
              child: Container(
                alignment: Alignment.center,
                margin: EdgeInsets.symmetric(horizontal: 8),
                padding: EdgeInsets.symmetric(horizontal: 10),
                decoration: BoxDecoration(
                  color:
                      _isCurrentTap(dummy[index]) ? Colors.grey : Colors.white,
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
                    color: _isCurrentTap(dummy[index])
                        ? Colors.white
                        : Colors.black,
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
