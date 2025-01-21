import 'package:flutter/material.dart';
import 'package:x_clone/generated/assets.dart';
import 'package:x_clone/main_page/presentation/main_page_screen/ui/widgets/bottom_navigation_bar_item_widget.dart';

class MainPageViewModel {
  //singleton design pattern
  // this allows creation of only a single object of this class
  static MainPageViewModel? _instance;

  static MainPageViewModel get instance {
    _instance ??= MainPageViewModel();
    return _instance!;
  }

  PageController pageController = PageController();

  List<BottomNavigationBarItem> bottomNavigationBarItems = [
    // home
    bottomNavigationBarItemWidget(Assets.svgHomeIcon),
    // search
    bottomNavigationBarItemWidget(Assets.svgSearchIcon),
    // grok
    bottomNavigationBarItemWidget(Assets.svgXAi),
    // notifications
    bottomNavigationBarItemWidget(Assets.svgNotificationIcon),
    // messages
    bottomNavigationBarItemWidget(Assets.svgInboxIcon),
    // communities
    bottomNavigationBarItemWidget(Assets.svgCommunitiesIcon),
  ];

  ValueNotifier<int> _currentBottomNavigationBarItem = ValueNotifier<int>(0);

  // getter
  int get getCurrentItemIndex => _currentBottomNavigationBarItem.value;

  //setter
  set setCurrentIndex(int value) =>
      _currentBottomNavigationBarItem.value = value;
}
