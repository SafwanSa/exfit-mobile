import 'package:flutter/material.dart';

class FilterProvider with ChangeNotifier {
  String _type = 'Chest';

  String get type {
    return _type;
  }

  void setType({newType: String}) {
    _type = newType;
    notifyListeners();
  }
}
