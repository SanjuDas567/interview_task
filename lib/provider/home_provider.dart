import 'package:flutter/material.dart';

class HomeScreenProvider extends ChangeNotifier{

  final List _newList = [];
  List get newList => _newList;

  TextEditingController detailsController = TextEditingController();

  void dataSubmit(String data) {
    _newList.add(data);
    detailsController.clear();
    notifyListeners();
  }

  void removeFromList(int index) {
    _newList.removeAt(index);
    notifyListeners();
  }
}