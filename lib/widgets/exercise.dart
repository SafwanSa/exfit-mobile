import 'package:exfit/models/exercise.dart';
import 'package:flutter/material.dart';

class ExerciseWidget extends StatelessWidget {
  final Exercise exercise;

  ExerciseWidget({@required this.exercise});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 115,
      width: double.infinity,
      child: Card(
          child: Container(
        padding: EdgeInsets.symmetric(horizontal: 10),
        child: Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.network(
                exercise.imagesUrls[0],
              ),
            ),
            Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    exercise.name,
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 15),
                  Text(
                    exercise.difficulty,
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.black38,
                    ),
                  ),
                ],
              ),
            ),
            Spacer(),
            IconButton(
              icon: Icon(
                Icons.add_box_rounded,
                size: 45,
                color: Theme.of(context).accentColor,
              ),
              onPressed: () {},
            )
          ],
        ),
      )),
    );
  }
}
