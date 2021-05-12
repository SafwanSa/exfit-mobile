import 'package:flutter/material.dart';

class FilterProvider with ChangeNotifier {
  String _type = '';

  String get type {
    return _type;
  }

  void setType({newType: String}) {
    _type = newType;
    notifyListeners();
  }
}
