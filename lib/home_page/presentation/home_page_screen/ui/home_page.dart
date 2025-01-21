import 'package:x_clone/home_page/presentation/home_page_screen/ui/components/home_page_menu_list.dart';
import 'package:x_clone/home_page/presentation/home_page_screen/ui/components/home_page_top_bar_section.dart';
import 'package:x_clone/home_page/presentation/home_page_screen/ui/homepage_abstract.dart';
import 'package:x_clone/posts_list/presentation/posts_list_screen/ui/components/home_page_posts_list.dart';

class HomePage extends HomepageAbstract {
  @override
  HomePageMenuList menuList() => HomePageMenuList();

  @override
  HomePagePostsList postsList() => HomePagePostsList();

  @override
  HomePageTopBarSection topBarSection() => HomePageTopBarSection();
}
