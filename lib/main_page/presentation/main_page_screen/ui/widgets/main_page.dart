import 'package:flutter/material.dart';
import 'package:x_clone/theme.dart';

import '../../logic/main_page_view_model.dart';

class MainPage extends StatelessWidget {
  final MainPageViewModel _viewModel = MainPageViewModel.instance;

  MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomTheme.twitterBlack,
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: CustomTheme.twitterBlack,
        fixedColor: CustomTheme.twitterBlack,
        type: BottomNavigationBarType.fixed,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        elevation: 0,
        currentIndex: _viewModel.getCurrentItemIndex,
        items: _viewModel.bottomNavigationBarItems,
        onTap: (int index) {
          _viewModel.setCurrentIndex = index;
        },
      ),
    );
  }
}
