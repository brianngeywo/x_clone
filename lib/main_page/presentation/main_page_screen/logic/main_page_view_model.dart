import 'package:flutter/material.dart';

class MainPageViewModel {
  //singleton design pattern
  // this allows creation of only a single object of this class
  static MainPageViewModel? _instance;

  static MainPageViewModel get instance {
    _instance ??= MainPageViewModel();
    return instance;
  }

  List<BottomNavigationBarItem> bottomNavigationBarItems = [];

  ValueNotifier<int> _currentBottomNavigationBarItem = ValueNotifier<int>(0);

  // getter
  int get getCurrentItemIndex => _currentBottomNavigationBarItem.value;

  //setter
  set setCurrentIndex(int value) =>
      _currentBottomNavigationBarItem.value = value;
}
