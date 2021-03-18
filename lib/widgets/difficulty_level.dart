import 'package:flutter/material.dart';

class DifficultyLevel extends StatelessWidget {
  DifficultyLevel({
    @required this.size,
    @required this.length,
    @required this.percentage,
    this.borderRadius = 0,
  });

  final double size;
  final int length;
  final double percentage;

  final double borderRadius;

  final Color _red = Colors.red;
  final Color _green = Colors.green;
  final Color _orange = Colors.orange;

  Color get color {
    if (percentage <= 0.4) {
      return _green;
    } else if (percentage >= 0.4 && percentage <= 0.6) {
      return _orange;
    } else if (percentage > 0.6) {
      return _red;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
          children: List.generate(length, (int index) {
        if (index < percentage * length) {
          return ClipRRect(
            borderRadius: BorderRadius.circular(borderRadius),
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 0.5),
              height: size,
              width: size,
              color: color,
            ),
          );
        } else {
          return ClipRRect(
            borderRadius: BorderRadius.circular(borderRadius),
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 0.5),
              height: size,
              width: size,
              color: color.withOpacity(0.5),
            ),
          );
        }
      })),
    );
  }
}
