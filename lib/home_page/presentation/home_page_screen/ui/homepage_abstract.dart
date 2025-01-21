import 'package:flutter/material.dart';
import 'package:x_clone/home_page/presentation/home_page_screen/ui/components/home_page_menu_list.dart';
import 'package:x_clone/home_page/presentation/home_page_screen/ui/components/home_page_posts_list.dart';
import 'package:x_clone/home_page/presentation/home_page_screen/ui/components/home_page_top_bar_section.dart';
import 'package:x_clone/theme.dart';

abstract class HomepageAbstract extends StatelessWidget {
  HomePageTopBarSection topBarSection();

  HomePageMenuList menuList();

  HomePagePostsList postsList();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomTheme.twitterBlack,
      appBar: AppBar(
        backgroundColor: CustomTheme.twitterBlack,
        toolbarHeight: 120,
        title: Column(
          children: [
            topBarSection(),
            menuList(),
          ],
        ),
      ),
      body: postsList(),
    );
  }
}
