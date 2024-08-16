import 'package:flutter/material.dart';

class SubwayScreenViewModel extends ChangeNotifier {
  String _searchText = '';

  String get searchText => _searchText;

  void setSearchText(String text) {
    _searchText = text;
    notifyListeners();
  }
}
