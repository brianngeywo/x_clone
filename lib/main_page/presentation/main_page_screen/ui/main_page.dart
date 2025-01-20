import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:x_clone/generated/assets.dart';
import 'package:x_clone/main_page/presentation/main_page_screen/logic/main_page_view_model.dart';
import 'package:x_clone/theme.dart';

class MainPage extends StatelessWidget {
  final MainPageViewModel _mainPageViewModel = MainPageViewModel.instance;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomTheme.backgroundColor,
      floatingActionButton: FloatingActionButton(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        backgroundColor: CustomTheme.secondaryColor,
        onPressed: () {},
        child: SvgPicture.asset(Assets.svgTypePostIcon),
      ),
      body: PageView(
        controller: _mainPageViewModel.pageController,
        children: _mainPageViewModel.navigationPages,
        onPageChanged: (index) {
          _mainPageViewModel.setCurrentBottomNavigationIndex(index);
        },
      ),
      bottomNavigationBar: ValueListenableBuilder(
          valueListenable: _mainPageViewModel.currentBottomNavigationIndex,
          builder: (context, value, child) {
            return BottomNavigationBar(
              type: BottomNavigationBarType.fixed,
              fixedColor: CustomTheme.backgroundColor,
              backgroundColor: CustomTheme.backgroundColor,
              showSelectedLabels: false,
              showUnselectedLabels: false,
              elevation: 0,
              currentIndex: value,
              items: _mainPageViewModel.bottomNavigationItems,
              onTap: (index) {
                _mainPageViewModel.pageController.jumpToPage(index);
                _mainPageViewModel.setCurrentBottomNavigationIndex(index);
              },
            );
          }),
    );
  }
}
