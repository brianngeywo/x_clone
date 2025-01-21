import 'package:flutter/material.dart';
import 'package:x_clone/home_page/presentation/home_page_screen/ui/home_page.dart';
import 'package:x_clone/theme.dart';

import '../../logic/main_page_view_model.dart';

class MainPage extends StatelessWidget {
  final MainPageViewModel _viewModel = MainPageViewModel.instance;

  MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomTheme.twitterBlack,
      body: PageView(
        controller: _viewModel.pageController,
        children: [
          HomePage(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: CustomTheme.twitterBlack,
        fixedColor: CustomTheme.twitterBlack,
        type: BottomNavigationBarType.fixed,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        elevation: 0,
        currentIndex: _viewModel.getCurrentItemIndex,
        items: _viewModel.bottomNavigationBarItems,
        iconSize: 30,
        onTap: (int index) {
          _viewModel.setCurrentIndex = index;
        },
      ),
    );
  }
}
