import 'package:flutter/cupertino.dart';
import 'package:x_clone/home_page/presentation/home_page_screen/ui/components/app_bar_section/app_bar_section.dart';
import 'package:x_clone/home_page/presentation/home_page_screen/ui/components/posts_list_section/posts_list_section.dart';
import 'package:x_clone/home_page/presentation/home_page_screen/ui/components/top_menu_section/top_menu_section.dart';

abstract class HomePageAbstract extends StatelessWidget {
  AppBarSection appBarSection();

  PostListsSection postListsSection();

  TopMenuSection topMenuSection();
}
